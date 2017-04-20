///@param lifeform
///@param sex

var _lifeform = argument0;

switch(argument1){

	case SEX_MALE:
		_lifeform.sex = SEX_MALE;
		_lifeform.body[BODY_BODY, DOWN] = spr_body_male_down;
		_lifeform.body[BODY_BODY, LEFT] = spr_body_male_left;
		_lifeform.body[BODY_BODY, RIGHT] = spr_body_male_right;
		_lifeform.body[BODY_BODY, UP] = spr_body_male_up;
	break;
	
	case SEX_FEMALE:
		_lifeform.sex = SEX_FEMALE;
		//TODO
	break;

}