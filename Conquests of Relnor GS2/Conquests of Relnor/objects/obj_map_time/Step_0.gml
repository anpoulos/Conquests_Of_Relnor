/// @description Insert description here
// You can write your code in this editor

if(global.forceNight){
	global.lightSurfaceRGB = global.minLight;
}
else{

	global.time += 1;

	if(global.time % 60 == 0){ 

		if(global.time >= 700 && global.time <= 2000){
			if(global.lightSurfaceRGB > global.maxLight){
				global.lightSurfaceRGB -= global.lightStep;
				if(global.lightSurfaceRGB < global.maxLight){
					global.lightSurfaceRGB = global.maxLight;
				}
			}
		}
		else{
			if(global.lightSurfaceRGB <= global.minLight){
				global.lightSurfaceRGB += global.lightStep;
				if(global.lightSurfaceRGB > global.minLight){
					global.lightSurfaceRGB = global.minLight;
				}
			}
		}
	}

	if(global.time >= 2400){
		global.time = 0;
	}

}

surface_set_target(global.lightSurface);
	var _color = make_color_rgb(global.lightSurfaceRGB,global.lightSurfaceRGB,global.lightSurfaceRGB);
	//var _color = c_white;
	draw_set_color(_color);
	draw_rectangle(0,0,room_width, room_height, false);
surface_reset_target();