
var _m = 0.75;
var _mLimit = 0.25;

switch(lightDirection){
	case LIGHT_DIRECTION_DOWN:
		leftX = lightX - radius*_m;
		rightX = lightX + radius*_m;
		topY = lightY - radius*_mLimit;
		bottomY = lightY + radius;
	break;
	
	case LIGHT_DIRECTION_UP:
		leftX = lightX - radius*_m;
		rightX = lightX + radius*_m;
		bottomY = lightY + radius*_mLimit;
		topY = lightY - radius;
	break;
	
	case LIGHT_DIRECTION_RIGHT:
		leftX = lightX - radius*_mLimit;
		rightX = lightX + radius;
		topY = lightY - radius*_m;
		bottomY = lightY + radius*_m;
	break;
	
	case LIGHT_DIRECTION_LEFT:
		rightX = lightX + radius*_mLimit;
		leftX = lightX - radius;
		topY = lightY - radius*_m;
		bottomY = lightY + radius*_m;
	break;
	
	default:
		leftX = lightX - radius;
		rightX = lightX + radius;
		topY = lightY - radius;
		bottomY = lightY + radius;
	break;
}
