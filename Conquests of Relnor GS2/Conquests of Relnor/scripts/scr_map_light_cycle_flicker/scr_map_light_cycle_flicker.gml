
	if(global.time % lightFlickerOffset == 0){
		scr_map_light_calculate_dimensions();
	
		switch(lightDirection){
			
			case LIGHT_DIRECTION_UP:
				leftX -= irandom(flickerAmount);
				rightX += irandom(flickerAmount);
				topY -= irandom(flickerAmount);
				bottomY += irandom(3);
			break;
			
			case LIGHT_DIRECTION_RIGHT:
				leftX -= irandom(3);
				rightX += irandom(flickerAmount);
				topY -= irandom(flickerAmount);
				bottomY += irandom(flickerAmount);
			break;
			
			case LIGHT_DIRECTION_LEFT:
				leftX -= irandom(flickerAmount);
				rightX += irandom(3);
				topY -= irandom(flickerAmount);
				bottomY += irandom(flickerAmount);
			break;
			
			case LIGHT_DIRECTION_DOWN:
				leftX -= irandom(flickerAmount);
				rightX += irandom(flickerAmount);
				topY -= irandom(3);
				bottomY += irandom(flickerAmount);
			break;
			
			default:
				leftX -= irandom(flickerAmount);
				rightX += irandom(flickerAmount);
				topY -= irandom(flickerAmount);
				bottomY += irandom(flickerAmount);
			break;
		}
	}
