///@param room

switch(argument0){
	case rm_relnor_24_7_inn: return 0;
	
	case rm_relnor_24_7_blavish_NE: return 1;
	
	case rm_relnor_24_8: return 2;
	
	case rm_light_test: return 3;
	
	case rm_test_room_forest: return 4;
	
	case rm_test_room_pincer: return 5;
	
	case rm_relnor_24_7_inn_floor_2: return 6;
	
	case rm_relnor_25_8: return 7;
	
	default: return -1;
}

#macro ROOM_MAX 8