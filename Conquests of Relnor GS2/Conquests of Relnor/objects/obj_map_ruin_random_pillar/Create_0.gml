/// @description Insert description here
// You can write your code in this editor

var _obj = noone;

switch(irandom(4)){
	case 3: case 0: case 1: _obj = obj_map_ruin_pillar; break;
	case 2: _obj = obj_map_ruin_pillar_02; break;
	default: _obj = noone;
}

if(_obj != noone){
	instance_create(x,y,_obj);
}

instance_destroy();

