///@param rm

for(var _x = 0; _x < RELNOR_MAX_CELLS; _x++){
	for(var _y = 0; _y < RELNOR_MAX_CELLS; _y++){
		if(global.mapControl.rooms[_x,_y] == argument0){
			return instance_create(_x,_y,obj_point);
		}
	}
}

switch(argument0){
	case rm_relnor_24_25_blavish: return instance_create(24,25,obj_point);
	case rm_relnor_25_23: return instance_create(25,23,obj_point);
	case rm_relnor_25_24_inn:
	case rm_relnor_25_24_inn_floor_2:
	case rm_relnor_25_24_blavish_NE: return instance_create(25,24,obj_point);
	case rm_relnor_25_25_blavish: return instance_create(25,25,obj_point);
	case rm_relnor_26_23: return instance_create(26,23,obj_point);
	default: return scr_error("Room not found.");
}
