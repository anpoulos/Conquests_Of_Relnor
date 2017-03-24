/// @description Insert description here
// You can write your code in this editor



	if(global.time % 60 == 0){ 

		if(global.time >= 700 && global.time <= 2000){
			//nighttime to daytime transition
			if(radius < maxRadius){
				radius += radiusStep;
				if(radius > maxRadius){
					radius = maxRadius;
				}
				scr_map_light_calculate_dimensions();
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
		}
	}


gpu_set_blendmode(bm_subtract);

surface_set_target(global.lightSurface);

var _color = make_color_rgb(global.lightSurfaceRGB,global.lightSurfaceRGB,global.lightSurfaceRGB );

draw_set_color(_color);

draw_ellipse_color(leftX, topY, rightX, bottomY, 
	global.lightColorRGB, c_black, false);

surface_reset_target();
gpu_set_blendmode(bm_normal);
