/// @description Insert description here
// You can write your code in this editor

gpu_set_blendmode(bm_subtract);

surface_set_target(global.lightSurface);

var _color = make_color_rgb(global.lightSurfaceRGB,global.lightSurfaceRGB,global.lightSurfaceRGB );

draw_set_color(_color);

if(!isStill){
	if(lightOffset % 5 == 0){
		lightOffset = 1;
		leftOffset = leftX - irandom(randomOffset);
		rightOffset = rightX + irandom(randomOffset);
		topOffset = topY; // - irandom(randomOffset);
		bottomOffset = bottomY + irandom(randomOffset);
	}
	else{
		lightOffset += 1;
	}
}

draw_ellipse_color(leftOffset, topOffset, rightOffset, bottomOffset, 
	lightColor, c_black, false);

surface_reset_target();
gpu_set_blendmode(bm_normal);
