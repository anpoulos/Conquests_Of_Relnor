
var _m = 0.75;
var _mLimit = 0.25;

leftX = x - radius*_m;
rightX = x + radius*_m;
topY = y - radius*_m;
bottomY = y + radius*_m;

switch(lightDirection){
	case LIGHT_DIRECTION_DOWN:
		topY = y - radius*_mLimit;
		bottomY = y + radius;
	break;
	
	case LIGHT_DIRECTION_UP:
		bottomY = y + radius*_mLimit;
		topY = y - radius;
	break;
	
	case LIGHT_DIRECTION_RIGHT:
		leftX = x - radius*_mLimit;
		rightX = x + radius;
	break;
	
	case LIGHT_DIRECTION_LEFT:
		rightX = x + radius*_mLimit;
		leftX = x - radius;
	break;
	
	default:
		leftX = x - radius;
		rightX = x + radius;
		topY = y - radius;
		bottomY = y + radius;
	break;
}
