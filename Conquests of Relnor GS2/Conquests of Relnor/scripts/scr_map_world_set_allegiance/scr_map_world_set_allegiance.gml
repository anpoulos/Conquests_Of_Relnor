///@param square_obj
///@param allegiance

argument0.allegiance = argument1;

switch(argument1){
	case ALLEGIANCE_RED:
		argument0.color = c_red;
	break;
	
	case ALLEGIANCE_BLUE:
		argument0.color = c_blue;
	break;
	
	case ALLEGIANCE_ANIMAL:
		argument0.color = c_orange;
	break;
	
	default:
		argument0.color = c_gray;
	break;
}