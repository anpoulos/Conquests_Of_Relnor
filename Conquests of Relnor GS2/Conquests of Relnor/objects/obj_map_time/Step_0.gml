/// @description Insert description here
// You can write your code in this editor

if(global.forceNight){
	global.lightSurfaceRGB = global.minLight;
}
else{

	global.time += 1;

	//if(!global.isInterior && global.time >= 500 && global.time <= 600){
	//	if(global.sun.x != room_width){
	//		global.sun.x = room_width;
	//	}
	//}

	if(global.time % 6 == 0){ 

		if(global.time >= 700 && global.time <= 2000){
			//nighttime to daytime transition
			if(global.shadowOpacity < global.shadowOpacityMax){
				global.shadowOpacity += 0.01;
				if(global.shadowOpacity > global.shadowOpacityMax){
					global.shadowOpacity = global.shadowOpacityMax;
				}
			}
			if(global.nightShadowOpacity > 0.0){
				global.nightShadowOpacity -= 0.01;
				if(global.nightShadowOpacity < 0.0){
					global.nightShadowOpacity = 0.0;
				}
			}
			if(!global.isInterior && global.sun.x > 0){
				global.sun.x -= sunStep;
				if(global.sun.x < 0){
					global.sun.x = 0;
				}
			} 
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
			if(global.shadowOpacity > 0.0){
				global.shadowOpacity -= 0.05;
				if(global.shadowOpacity < 0.0){
					global.shadowOpacity = 0.0;
				}
			}
			if(global.nightShadowOpacity < global.shadowOpacityMax){
				global.nightShadowOpacity += 0.05;
				if(global.nightShadowOpacity > global.shadowOpacityMax){
					global.nightShadowOpacity = global.shadowOpacityMax;
				}
			}
			if(!global.isInterior && global.sun.x < room_width){
				global.sun.x += sunStep;
				if(global.sun.x > room_width){
					global.sun.x = room_width;
				}
			} 
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
	draw_set_color(minColorRGB);
	draw_rectangle(0,0,room_width, room_height, false);
surface_reset_target();