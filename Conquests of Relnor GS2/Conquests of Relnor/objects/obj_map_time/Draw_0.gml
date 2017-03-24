/// @description Draw Night/Day
// You can write your code in this editor

gpu_set_blendmode(bm_subtract);

draw_surface(global.lightSurface,x,y);
//draw_surface_ext(global.lightSurface,x,y,1,1,0,c_white,global.nightOpacity);

gpu_set_blendmode(bm_normal);
