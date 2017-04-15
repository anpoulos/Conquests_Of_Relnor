/// @description Insert description here
// You can write your code in this editor

if(hasShadow){
	var _imageIndex = hasShadowSprite ? 1 : image_index;
	scr_map_shadow_draw(global.shadowOpacity, 0.75, _imageIndex);
}

if(isVisible){
	draw_self();
}