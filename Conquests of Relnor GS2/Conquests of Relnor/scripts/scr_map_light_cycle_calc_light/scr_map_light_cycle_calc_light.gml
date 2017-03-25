
var _objIndex = self.object_index;

if(global.time >= 700 && global.time <= 2000){
	var s = (global.time-700)/300;
	if(s > 1){
		s = 1;
	}
	
	if(object_is_ancestor(_objIndex, obj_map_light_night_cycle) || _objIndex == obj_map_light_night_cycle){
		lightColor[0] = lightColorMin[0];
		lightColor[1] = lightColorMin[1];
		lightColor[2] = lightColorMin[2];
		radius = minRadius;
		lightColorRGB = make_color_rgb(lightColor[0], lightColor[1], lightColor[2]);
	}
	else if(object_is_ancestor(_objIndex, obj_map_light_day_cycle) || _objIndex == obj_map_light_day_cycle){
		lightColor[0] = lightColorMax[0]*s;
		lightColor[1] = lightColorMax[1]*s;
		lightColor[2] = lightColorMax[2]*s;
		radius = maxRadius*s;
		lightColorRGB = make_color_rgb(lightColor[0], lightColor[1], lightColor[2]);
	}
	else{
		radius = maxRadius*s;
	}
}
else{
	var t = global.time;
	var s = 1;
	
	if(t <= 2400 && t >= 2000){
		s = (t - 2000)/200;
	}

	if(object_is_ancestor(_objIndex, obj_map_light_night_cycle) || _objIndex == obj_map_light_night_cycle){
		lightColor[0] = lightColorMax[0]*s;
		lightColor[1] = lightColorMax[1]*s;
		lightColor[2] = lightColorMax[2]*s;
		radius = maxRadius*s;
		lightColorRGB = make_color_rgb(lightColor[0], lightColor[1], lightColor[2]);
	}
	else if(object_is_ancestor(_objIndex, obj_map_light_day_cycle) || _objIndex == obj_map_light_day_cycle){
		lightColor[0] = lightColorMin[0];
		lightColor[1] = lightColorMin[1];
		lightColor[2] = lightColorMin[2];
		radius = minRadius;
		lightColorRGB = make_color_rgb(lightColor[0], lightColor[1], lightColor[2]);
	}
	else{
		radius = minRadius;
	}
}
