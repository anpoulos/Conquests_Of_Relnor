/// @description Insert description here
// You can write your code in this editor

lightX = x + xOffset;
lightY = y + yOffset;

if(global.time >= 700 && global.time <= 1900){
	//daytime
	scr_map_light_cycle_color_step(dayColorTarget);
	scr_map_light_cycle_strength_step(dayStrengthTarget);
	scr_map_light_cycle_radius_step(dayRadiusTarget);	
	scr_map_light_cycle_day_opacity_step(dayOpacityTargetDuringDay);
	scr_map_light_cycle_night_opacity_step(nightOpacityTargetDuringDay);
	if(hasDayFlicker){
		scr_map_light_cycle_flicker();
	}
	else if(!isStill || dayRadiusTarget != nightRadiusTarget){
		scr_map_light_calculate_dimensions();
	}
}
else{
	//nighttime
	scr_map_light_cycle_color_step(nightColorTarget);
	scr_map_light_cycle_strength_step(nightStrengthTarget);
	scr_map_light_cycle_radius_step(nightRadiusTarget);
	scr_map_light_cycle_day_opacity_step(dayOpacityTargetDuringNight);
	scr_map_light_cycle_night_opacity_step(nightOpacityTargetDuringNight);
	if(hasNightFlicker){
		scr_map_light_cycle_flicker();
	}
	else if(!isStill || dayRadiusTarget != nightRadiusTarget){
		scr_map_light_calculate_dimensions();
	}
}

lightColorRGB = make_color_rgb(color[0], color[1], color[2]);

gpu_set_blendmode(bm_subtract);

surface_set_target(global.lightSurface);

draw_ellipse_color(leftX, topY, rightX, bottomY, 
	lightColorRGB, c_black, false);

surface_reset_target();
gpu_set_blendmode(bm_normal);
