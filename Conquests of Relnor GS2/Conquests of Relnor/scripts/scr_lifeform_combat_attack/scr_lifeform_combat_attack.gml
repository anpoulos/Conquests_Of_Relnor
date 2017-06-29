///@param item

var _item = argument0;

var _destinationX = 0;
var _destinationY = 0;

if(isPlayer){
	if(autoTarget == noone){
		_destinationX = mouse_x;
		_destinationY = mouse_y;
	}
	else{
		_destinationX = scr_player_get_auto_target_projected_x();
		_destinationY = scr_player_get_auto_target_projected_y();
	}
}
else{
	_destinationX = target.x;
	_destinationY = target.y;
}

scr_lifeform_face_towards(self, _destinationX, _destinationY);

var _weight = 5;
	
if(_item != noone){
	_weight = _item.itemStats[ITEM_STATS_WEIGHT];
}

var _energyDrain = _weight*(1.5 - (statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_STRENGTH]/STATS_MULTIPLIER/LEVEL_CAP));
	
if(statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_ENERGY] < _energyDrain){
	if(isPlayer){
		state = moveState;
		return false;
	}
	else{
		scr_lifeform_recover_energy();
		scr_npc_choose_next_state();
		return false;
	}
}

var _a = statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_STRENGTH]/LEVEL_CAP;
if(_a < 1){
	_a = 1;
}
var _b = _a/_weight;

image_speed = _b;
sprite_index = attackSprite[face4Way];
	
//var _oX = 0;
//var _oY = 0;

//switch(face8Way){
//    case FACE_RIGHT:
//        _oX = 10;
//    break;
    
//    case FACE_LEFT:
//        _oX = -10;
//    break;
    
//    case FACE_UPPERRIGHT:
//        _oY = -15;
//        _oX = 10;
//    break;
//    case FACE_UPPERLEFT:
//        _oY = -15;
//        _oX = -10;
//    break;
//    case FACE_UP:
//        _oY = -15;
//    break;
    
//    case FACE_DOWNRIGHT:
//        _oX = 10;
//        _oY = 10;
//    break;
//    case FACE_DOWNLEFT:
//        _oX = -10;
//        _oY = 10;
//    break;
//    case FACE_DOWN:
//        _oY = 10;
//    break;
//}

if (!attacked && image_index >= 3){
	
	if(_item == noone){
		var _damageType = obj_damage_melee_small;
	}
	else{
		var _damageType = _item.damageType;
	}

	scr_lifeform_damage_create(x, y, _damageType, scr_lifeform_get_random_hit(_item), 
		self, _destinationX, _destinationY);
	scr_lifeform_increase_stat(self, STATS_PHYSICAL, STATS_PHYSICAL_ENERGY, -_energyDrain);
	
	attacked = true;
	
}
