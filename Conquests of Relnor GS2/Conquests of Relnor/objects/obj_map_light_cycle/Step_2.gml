/// @description Insert description here
// You can write your code in this editor

lightX = x + xOffset;
lightY = y + yOffset;

if(global.time >= 7000 && global.time <= 19000){
	//daytime
	scr_map_light_cycle_color_step(dayColorTarget);
	scr_map_light_cycle_strength_step(dayStrengthTarget);
	scr_map_light_cycle_radius_step(dayRadiusTarget);	
	scr_map_light_cycle_day_opacity_step(dayOpacityTargetDuringDay);
	scr_map_light_cycle_night_opacity_step(nightOpacityTargetDuringDay);
	if(!isStill || dayRadiusTarget != nightRadiusTarget){
		scr_map_light_calculate_dimensions();
	}
	if(hasDayFlicker){
		scr_map_light_cycle_flicker();
	}
}
else{
	//nighttime
	scr_map_light_cycle_color_step(nightColorTarget);
	scr_map_light_cycle_strength_step(nightStrengthTarget);
	scr_map_light_cycle_radius_step(nightRadiusTarget);
	scr_map_light_cycle_day_opacity_step(dayOpacityTargetDuringNight);
	scr_map_light_cycle_night_opacity_step(nightOpacityTargetDuringNight);
	if(!isStill || dayRadiusTarget != nightRadiusTarget){
		scr_map_light_calculate_dimensions();
	}
	if(hasNightFlicker){
		scr_map_light_cycle_flicker();
	}
}

lightColorRGB = make_color_rgb(color[0]*strength, color[1]*strength, color[2]*strength);

gpu_set_blendmode(bm_subtract);

surface_set_target(global.lightSurface);


draw_ellipse_color(leftX, topY, rightX, bottomY, 
	lightColorRGB, c_black, false);

surface_reset_target();
gpu_set_blendmode(bm_normal);
