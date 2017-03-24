/// @description Insert description here
// You can write your code in this editor

if(global.forceNight){
	global.lightSurfaceRGB = global.minLight;
}
else{

	global.time += 1;

	if(global.time % 60 == 0){ 

		if(global.time >= 700 && global.time <= 2000){
			//nighttime to daytime transition
			if(global.lightSurfaceRGB > global.maxLight){
				global.lightSurfaceRGB -= global.lightStep;
				if(global.lightSurfaceRGB < global.maxLight){
					global.lightSurfaceRGB = global.maxLight;
				}
			}
			for(var i = 0; i < 3; i++){
				if(lightColor[i] >= lightColorMax[i]){
					continue;
				}
				lightColor[i] += global.lightStep;
				if(lightColor[i] > lightColorMax[i]){
					lightColor[i] = lightColorMax[i];
				}
				global.lightColorRGB = make_color_rgb(lightColor[0], lightColor[1], lightColor[2]);
			}
		}
		else{
			//daytime to nighttime transition
			if(global.lightSurfaceRGB <= global.minLight){
				global.lightSurfaceRGB += global.lightStep;
				if(global.lightSurfaceRGB > global.minLight){
					global.lightSurfaceRGB = global.minLight;
				}
			}
			for(var i = 0; i < 3; i++){
				if(lightColor[i] <= lightColorMin[i]){
					continue;
				}
				lightColor[i] -= global.lightStep;
				if(lightColor[i] < lightColorMin[i]){
					lightColor[i] = lightColorMin[i];
				}
				global.lightColorRGB = make_color_rgb(lightColor[0], lightColor[1], lightColor[2]);
			}
		}
	}

	if(global.time >= 2400){
		global.time = 0;
	}

}

surface_set_target(global.lightSurface);
	if(global.isInterior){
		var _color = make_color_rgb(global.minLight, global.minLight, global.minLight);
		draw_set_color(_color);
	}
	else{
		var _color = make_color_rgb(global.lightSurfaceRGB,global.lightSurfaceRGB,global.lightSurfaceRGB);
		draw_set_color(_color);
	}
	draw_rectangle(0,0,room_width, room_height, false);
surface_reset_target();