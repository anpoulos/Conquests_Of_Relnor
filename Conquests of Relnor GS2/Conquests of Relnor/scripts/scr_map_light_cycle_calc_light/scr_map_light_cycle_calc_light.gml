
var _objIndex = self.object_index;

if(global.time >= 7000 && global.time <= 20000){
	var s = 1;
	if(global.time >= 7000 && global.time <= 10000){
		s = (global.time-7000)/3000;
	}
	
	dayOpacity = dayOpacityTargetDuringDay*s;
	nightOpacity = nightOpacityTargetDuringDay*s;
	radius = dayRadiusTarget*s;
	strength = dayStrengthTarget*s;
	color[0] = round(dayColorTarget[0]*s);
	color[1] = round(dayColorTarget[1]*s);
	color[2] = round(dayColorTarget[2]*s);
}
else{
	var s = 1;
	
	if(global.time <= 24000 && global.time >= 20000){
		s = (global.time - 20000)/2000;
	}

	dayOpacity = dayOpacityTargetDuringNight*s;
	nightOpacity = nightOpacityTargetDuringNight*s;
	
	if(s < 1){
		s += 1;
	}
	radius = nightRadiusTarget*s;
	strength = nightStrengthTarget*s;
	color[0] = round(nightColorTarget[0]*s);
	color[1] = round(nightColorTarget[1]*s);
	color[2] = round(nightColorTarget[2]*s);
	
}

lightColorRGB = make_color_rgb(color[0], color[1], color[2]);