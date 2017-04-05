///scr_damage_lifeform(lifeform, source, obj_damage)

if(!instance_exists(argument0)|| !instance_exists(argument1) ||
    !instance_exists(argument2)){
    return false;
}

var _lifeform = argument0;
var _source = argument1;

var _amount = argument2.amount;
var _knockback = argument2.knockback;

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

with(_lifeform){

	var _lookup = allegianceParent == noone ? obj_npc_Parent : allegianceParent;
	var _total = instance_number(_lookup);
	for(var i = 0; i < _total; i++){
		var _npc = instance_find(_lookup, i);
		var _distance = point_distance(x,y,_npc.x, _npc.y);
		if(_npc.state == _npc.idleState &&
		_distance <= _npc.sight && 
		_npc.isDefensive &&
		!_npc.isAggressive){
			_npc.isAggressive = true;
		    _npc.alarm[2] = -1;
		}
	}
	
	if(!isAggressive){
		isAggressive = true;
	}
	
    _xForce = round(_xForce/2);
    _yForce = round(_yForce/2);
    //image_speed = attackImageSpeed;
    scr_npc_auto_retaliate(_source);
    physics_apply_impulse(x,y, _xForce, _yForce);
}



