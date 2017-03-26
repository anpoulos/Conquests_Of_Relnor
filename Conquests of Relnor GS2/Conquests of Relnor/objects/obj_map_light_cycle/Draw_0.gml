/// @description Insert description here
// You can write your code in this editor
if(daySprite != noone){
	draw_sprite_ext(daySprite, 0, x,y,1,1,0,c_white,dayOpacity);
}
if(nightSprite != noone){
	draw_sprite_ext(nightSprite, 0, x,y,1,1,0,c_white,nightOpacity);
}
if(isFire){
	draw_set_alpha(fireOpacity);
	draw_self();
	draw_set_alpha(1.0);
}