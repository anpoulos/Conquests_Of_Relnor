

var _hasToCatchUp = false;

if(global.time >= 7000 && global.time <= 19000){
//day targets
	for(var i = 0; i < 3; i++){
		if(color[i] != dayColorTarget[i]){
			_hasToCatchUp = true;
		}
	}
	if(!_hasToCatchUp && 
	(radius != dayRadiusTarget || 
	dayOpacity != dayOpacityTargetDuringDay ||
	nightOpacity != nightOpacityTargetDuringDay ||
	strength != dayStrengthTarget)){
		_hasToCatchUp = true;
	}
	
	if(_hasToCatchUp){
	
		var _timeDifference = global.time - 7000;
		//play catch up
		for(var i = 0; i < _timeDifference; i++){
			scr_map_light_cycle_color_step(dayColorTarget);
			scr_map_light_cycle_strength_step(dayStrengthTarget);
			scr_map_light_cycle_radius_step(dayRadiusTarget);	
			scr_map_light_cycle_day_opacity_step(dayOpacityTargetDuringDay);
			scr_map_light_cycle_night_opacity_step(nightOpacityTargetDuringDay);
		}
		
		if(hasDayFlicker){
			scr_map_light_cycle_flicker();
		}
		
	}
	
}
else{
//night targets
	for(var i = 0; i < 3; i++){
		if(color[i] != nightColorTarget[i]){
			_hasToCatchUp = true;
		}
	}
	if(!_hasToCatchUp && 
	(radius != nightRadiusTarget || 
	dayOpacity != dayOpacityTargetDuringNight ||
	nightOpacity != nightOpacityTargetDuringNight ||
	strength != nightStrengthTarget)){
		_hasToCatchUp = true;
	}
	
	if(_hasToCatchUp){
	
		if(global.time >= 19000 && global.time <= 24000){
			var _timeDifference = global.time - 19000;
		}
		else{
			var _timeDifference = (global.time + 24000) - 19000;
		}
	
		//play catch up
		for(var i = 0; i < _timeDifference; i++){
			scr_map_light_cycle_color_step(nightColorTarget);
			scr_map_light_cycle_strength_step(nightStrengthTarget);
			scr_map_light_cycle_radius_step(nightRadiusTarget);
			scr_map_light_cycle_day_opacity_step(dayOpacityTargetDuringNight);
			scr_map_light_cycle_night_opacity_step(nightOpacityTargetDuringNight);
		}
		
		if(hasNightFlicker){
			scr_map_light_cycle_flicker();
		}
		
	}
}

if(_hasToCatchUp){
	scr_map_light_calculate_dimensions();
}

lightColorRGB = make_color_rgb(color[0]*strength, color[1]*strength, color[2]*strength);

//var _objIndex = self.object_index;

//if(global.time >= 7000 && global.time <= 20000){
//	var s = 1;
//	if(global.time >= 7000 && global.time <= 10000){
//		s = (global.time-7000)/3000;
//	}
	
//	dayOpacity = dayOpacityTargetDuringDay*s;
//	nightOpacity = nightOpacityTargetDuringDay*s;
//	radius = dayRadiusTarget*s;
//	strength = dayStrengthTarget*s;
//	color[0] = dayColorTarget[0];
//	color[1] = dayColorTarget[1];
//	color[2] = dayColorTarget[2];
//}
//else{
//	var s = 1;
	
//	if(global.time <= 24000 && global.time >= 20000){
//		s = (global.time - 20000)/2000;
//	}

//	dayOpacity = dayOpacityTargetDuringNight*s;
//	nightOpacity = nightOpacityTargetDuringNight*s;
	
//	if(s < 1){
//		s += 1;
//	}
//	radius = nightRadiusTarget*s;
//	strength = nightStrengthTarget*s;
//	color[0] = nightColorTarget[0];
//	color[1] = nightColorTarget[1];
//	color[2] = nightColorTarget[2];
//}

//lightColorRGB = make_color_rgb(color[0], color[1], color[2]);