/// @description
// You can write your code in this editor
if(sprite != noone){
	if(!isFire){
		var _opacity = global.lightSurfaceRGB/global.minLight;
		draw_set_alpha(_opacity);
		draw_sprite(sprite, 0, x,y);
	}
	else{
		draw_set_alpha(0.5);
		draw_self();
	}
	draw_set_alpha(1);
}