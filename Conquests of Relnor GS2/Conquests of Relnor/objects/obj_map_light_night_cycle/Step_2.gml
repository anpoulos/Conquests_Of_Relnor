/// @description Insert description here
// You can write your code in this editor


	if(global.time % 6 == 0){ 

		if(!(global.time >= 700 && global.time <= 2000)){
			//nighttime to daytime transition
			if(radius < maxRadius){
				radius += radiusStep;
				if(radius > maxRadius){
					radius = maxRadius;
				}
				scr_map_light_calculate_dimensions();
			}
			for(var i = 0; i < 3; i++){
				if(lightColor[i] >= lightColorMax[i]){
					continue;
				}
				lightColor[i] += lightStep;
				if(lightColor[i] > lightColorMax[i]){
					lightColor[i] = lightColorMax[i];
				}
				lightColorRGB = make_color_rgb(lightColor[0], lightColor[1], lightColor[2]);
			}
		}
		else{
			//daytime to nighttime transition
			if(radius > minRadius){
				radius -= radiusStep;
				if(radius < minRadius){
					radius = minRadius;
				}
				scr_map_light_calculate_dimensions();
			}
			
			for(var i = 0; i < 3; i++){
				if(lightColor[i] <= lightColorMin[i]){
					continue;
				}
				lightColor[i] -= lightStep;
				if(lightColor[i] < lightColorMin[i]){
					lightColor[i] = lightColorMin[i];
				}
				lightColorRGB = make_color_rgb(lightColor[0], lightColor[1], lightColor[2]);
			}
		}
	}
	
if(!isStill){
	if(lightOffset % 5 == 0){
		lightOffset = 1;
		leftOffset = leftX - irandom(randomOffset);
		rightOffset = rightX + irandom(randomOffset);
		topOffset = topY; // - irandom(randomOffset);
		bottomOffset = bottomY + irandom(randomOffset);
	}
	else{
		lightOffset += 1;
	}
}


gpu_set_blendmode(bm_subtract);

surface_set_target(global.lightSurface);

draw_ellipse_color(leftOffset, topOffset, rightOffset, bottomOffset, 
	lightColorRGB, c_black, false);

surface_reset_target();
gpu_set_blendmode(bm_normal);
