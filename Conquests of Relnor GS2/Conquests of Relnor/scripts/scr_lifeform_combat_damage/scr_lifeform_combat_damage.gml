///@param lifeform
///@param source
///@param amount
///@param knockback

var _lifeform = argument0;
var _source = argument1;

var _amount = argument2;
var _knockback = argument3;

var _defenceBonus = irandom(_lifeform.defence + _lifeform.statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_STRENGTH]/LEVEL_CAP);

_amount -= _defenceBonus;
if(_amount < 0){
	_amount = 0;
}

if(_lifeform.allegiance == _source.allegiance){
    return false;
}

scr_lifeform_add_exp(_source, _amount*EXPERIENCE_MULTIPLIER);
scr_lifeform_update_health_bar(_source);

if( (_lifeform.statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_HEALTH] - _amount) <= 0){
    _lifeform.statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_HEALTH] = 0;
    _lifeform.state = _lifeform.deathState;
}
else{
    _lifeform.statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_HEALTH] -= _amount;
}

var _displayX = _lifeform.x-7+irandom(15);

var _dmgDisplay = instance_create(_displayX, _lifeform.y, obj_damage_display_amount);
_dmgDisplay.text = string(_amount);
_dmgDisplay.depth = _lifeform.depth - 1;

scr_lifeform_update_health_bar(_lifeform);

var _dir = point_direction(_source.x,_source.y, 
                        _lifeform.x,_lifeform.y);
var _xForce = lengthdir_x(_knockback, _dir);
var _yForce = lengthdir_y(_knockback, _dir);

if(_source.isPlayer && _source.combatCheckCount == -1){
	global.mapControl.musicType = MUSIC_TYPE_BATTLE;
	audio_sound_gain(global.mapControl.currentMusicIndex, 0, 250);
}
_source.combatCheckCount = 300;

with(_lifeform){

	var _lookup = allegianceParent == noone ? obj_npc_Parent : allegianceParent;
	var _total = instance_number(_lookup);
	for(var i = 0; i < _total; i++){
		var _npc = instance_find(_lookup, i);
		var _distance = point_distance(x,y,_npc.x, _npc.y);
		if(_npc != self &&
		_distance <= _npc.engageDistance && 
		_npc.isDefensive &&
		!_npc.isAggressive &&
		!scr_lifeform_is_in_combat(_npc)){
			if(_npc.followTarget != noone){
				if(_npc.followTarget == _lifeform){
					_npc.target = _source;
				}
			}
			else{
				_npc.isAggressive = true;
			}
		    _npc.alarm[2] = -1;
		}
	}
	
	if(!isPlayer){
		scr_npc_auto_retaliate(_source);
	}
	else{
		if(combatCheckCount == -1){
			global.mapControl.musicType = MUSIC_TYPE_BATTLE;
			audio_sound_gain(global.mapControl.currentMusicIndex, 0, 250);
		}
	}
	
	combatCheckCount = 300;	
	
    _xForce = round(_xForce/2);
    _yForce = round(_yForce/2);
    //image_speed = attackImageSpeed;
    physics_apply_impulse(x,y, _xForce, _yForce);
}


