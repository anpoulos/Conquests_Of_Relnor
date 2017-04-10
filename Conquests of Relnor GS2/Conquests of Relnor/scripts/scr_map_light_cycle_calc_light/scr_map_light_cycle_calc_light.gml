
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
	color[0] = dayColorTarget[0];
	color[1] = dayColorTarget[1];
	color[2] = dayColorTarget[2];
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
	color[0] = nightColorTarget[0];
	color[1] = nightColorTarget[1];
	color[2] = nightColorTarget[2];
}

lightColorRGB = make_color_rgb(color[0], color[1], color[2]);