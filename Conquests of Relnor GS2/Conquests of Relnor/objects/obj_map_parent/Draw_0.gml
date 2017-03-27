/// @description Insert description here
// You can write your code in this editor

if(hasShadow){
	scr_lifeform_draw_shadows_misc(shadowOpacity);
}

if(blend){
//TODO - blend bottom of sprite with ground
}
else{
	draw_self();
}