///@param item

var _item = argument0;
var _weight = 5;
	
if(_item != noone){
	_weight = _item.itemStats[ITEM_STATS_WEIGHT];
}

var _a = statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_STRENGTH]/LEVEL_CAP;
if(_a < 1){
	_a = 1;
}
var _b = _a/_weight;

image_speed = _b;
sprite_index = attackSprite[face4Way];

var _destinationX = 0;
var _destinationY = 0;

if(isPlayer){
	_destinationX = mouse_x;
	_destinationY = mouse_y;
}
else{
	_destinationX = target.x;
	_destinationY = target.y;
}

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
	
	var _energyDrain = -_weight*(1.5 - (statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_STRENGTH]/STATS_MULTIPLIER/LEVEL_CAP));
	
	if(statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_ENERGY] + _energyDrain > 0){
		if(_item != noone){
			var _damageType = _item.damageType;
			var _toolIndex = _item.equipmentStats[EQUIPMENT_STATS_TOOL_TYPE];
			var _accuracy = irandom_range( ceil(statsCurrent[STATS_TOOLS,_toolIndex]/STATS_MULTIPLIER), LEVEL_CAP)/LEVEL_CAP;
			var _damage = _item.equipmentStats[EQUIPMENT_STATS_DAMAGE] * _accuracy;
		}
		else{
			var _damageType = obj_damage_melee_small;
			var _accuracy = irandom_range( ceil(statsMax[STATS_PHYSICAL, STATS_PHYSICAL_ENERGY]/(STATS_MULTIPLIER*STATS_ENERGY_MULTIPLIER)), LEVEL_CAP ) / LEVEL_CAP;
			var _strength = statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_STRENGTH];
			var _a = ceil(_strength/STATS_MULTIPLIER);
			var _damage = irandom(_a)*_accuracy;
		}

	    scr_lifeform_damage_create(x, y, _damageType, _damage, 
			self, _destinationX, _destinationY);
		scr_lifeform_face_towards(self, _destinationX, _destinationY);
		scr_lifeform_increase_stat(self, STATS_PHYSICAL, STATS_PHYSICAL_ENERGY, _energyDrain);
	}
	
	attacked = true;
	
}
