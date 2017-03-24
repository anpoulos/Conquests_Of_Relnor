/// @description Insert description here
// You can write your code in this editor

if(!isHidden){
	var _opacity = global.lightSurfaceRGB/global.minLight;

	var _opacityInverse = 1 - _opacity;

	draw_sprite_ext(nightSprite, 0, x,y,1,1,0,c_white,_opacity);
	draw_sprite_ext(daySprite, 0, x,y,1,1,0,c_white,_opacityInverse);
}