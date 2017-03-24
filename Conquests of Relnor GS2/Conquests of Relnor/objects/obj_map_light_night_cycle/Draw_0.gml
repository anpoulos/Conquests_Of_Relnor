/// @description Insert description here
// You can write your code in this editor

if(nightSprite == noone && daySprite == noone){
	
}
else if(nightSprite != noone && daySprite != noone){
	var _opacity = ((radius-minRadius)/(maxRadius-minRadius));

	draw_sprite_ext(daySprite, 0, x,y,1,1,0,c_white,1.0);
	draw_sprite_ext(nightSprite, 0, x,y,1,1,0,c_white,_opacity);
}
else if(nightSprite != noone){
	var _opacity = ((radius-minRadius)/(maxRadius-minRadius));

	draw_sprite_ext(nightSprite, 0, x,y,1,1,0,c_white,_opacity);
}
else if(daySprite != noone){
	var _opacity = 1 - ((radius-minRadius)/(maxRadius-minRadius));

	draw_sprite_ext(nightSprite, 0, x,y,1,1,0,c_white,_opacity);
}