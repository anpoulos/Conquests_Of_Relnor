/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sprite_index, 0, x,y,1,1,0,color,0.75);

if(global.debug == 1 && cellX != -1 && cellY != -1){
	var _string = "cellX,cellY : "+string(cellX)+","+string(cellY);
	draw_text_color(x-40,y,_string,c_white,c_white,c_white,c_white,1);
}
