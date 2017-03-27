/// @description Insert description here
// You can write your code in this editor

if(hasShadow){
	scr_lifeform_draw_shadows_misc(shadowOpacity);
}

if(blend){
draw_sprite(sprite_index, image_index, x,y);
	draw_sprite_part_ext(sprite_index, image_index,
		0,0, sprite_width, sprite_height, 
		x - sprite_width, y - sprite_height,
		1,1,c_black,1.0);
}
else{
	draw_self();
}