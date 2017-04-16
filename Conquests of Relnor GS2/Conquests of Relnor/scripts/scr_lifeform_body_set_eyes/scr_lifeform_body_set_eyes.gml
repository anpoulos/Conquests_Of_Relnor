///@param lifeform
///@param color

var _lifeform = argument0;

switch(argument1){
	case BLUE:
		_lifeform.body[BODY_EYES, DOWN] = spr_eyes_blue_down;
		_lifeform.body[BODY_EYES, LEFT] = spr_eyes_blue_left;
		_lifeform.body[BODY_EYES, RIGHT] = spr_eyes_blue_right;
		_lifeform.body[BODY_EYES, UP] = spr_eyes_blue_up;
	break;
	
	case BLACK:
	//TODO
	break;
	
	case GREEN:
	//TODO
	break;
	
	case BROWN:
	//TODO
	break;
}