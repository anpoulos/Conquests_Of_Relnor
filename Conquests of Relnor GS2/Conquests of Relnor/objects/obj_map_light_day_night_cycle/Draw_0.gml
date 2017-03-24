/// @description Insert description here
// You can write your code in this editor

if(!isHidden){
	var _opacity = ((radius-minRadius)/(maxRadius-minRadius));

	draw_sprite_ext(nightSprite, 0, x,y,1,1,0,c_white,1.0);
	draw_sprite_ext(daySprite, 0, x,y,1,1,0,c_white,_opacity);
}