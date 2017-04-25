///@param allegiance1
///@param allegiance2

if(argument0 == argument1){
	return false;
}

switch(argument0){

	case ALLEGIANCE_ANIMAL:
		switch(argument1){	
			case ALLEGIANCE_RED:
			case ALLEGIANCE_NEUTRAL:
			case ALLEGIANCE_BLUE:	
				return true;
			
			default:
				return false;
		}
	break;
	
	case ALLEGIANCE_BLUE:
		switch(argument1){
			case ALLEGIANCE_ANIMAL:
			case ALLEGIANCE_RED: 
				return true;
			
			default:
				return false;
		}
	break;

	case ALLEGIANCE_NEUTRAL:
		switch(argument1){
			case ALLEGIANCE_ANIMAL:
				return true;
			
			default:
				return false;
		}
	break;
	
	case ALLEGIANCE_RED:
		switch(argument1){
			case ALLEGIANCE_ANIMAL:
			case ALLEGIANCE_BLUE: 
				return true;
			
			default:
				return false;
		}
	break;

}

return noone;

	