
var _m = 0.75;

leftX = x - radius*_m;
rightX = x + radius*_m;
topY = y - radius*_m;
bottomY = y + radius*_m;

switch(lightDirection){
	case LIGHT_DIRECTION_DOWN:
		bottomY = y + radius;
	break;
	
	case LIGHT_DIRECTION_UP:
		topY = y - radius;
	break;
	
	case LIGHT_DIRECTION_RIGHT:
		rightX = x + radius;
	break;
	
	case LIGHT_DIRECTION_LEFT:
		leftX = x - radius;
	break;
	
	default:
		leftX = x - radius;
		rightX = x + radius;
		topY = y - radius;
		bottomY = y + radius;
	break;
}
