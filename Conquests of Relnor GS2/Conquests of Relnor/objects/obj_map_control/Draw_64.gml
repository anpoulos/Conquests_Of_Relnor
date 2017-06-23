/// @description Insert description here
// You can write your code in this editor

if(loadingOpacity != 0.0){

	if(isLoading && loadingOpacity < 2.0){
		loadingOpacity += 0.1;
	}
	else{
		loadingOpacity -= 0.1;
	}

	draw_set_alpha(loadingOpacity);
	draw_rectangle_color(0,0, display_get_gui_width(), display_get_gui_height(), 
	c_black, c_black, c_black, c_black, false);
	draw_text_color(display_get_gui_width()/2, display_get_gui_height()/2,
		"Loading...", c_white, c_white, c_white, c_white, loadingOpacity);
	draw_set_alpha(1);
}

if(gameOver){
	draw_set_alpha(gameOverOpacity);
	draw_rectangle_color(0,0, display_get_gui_width(), display_get_gui_height(), 
	c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
	draw_set_font(fnt_default_large);
	draw_text_color(display_get_gui_width()/2, display_get_gui_height()/2,
		"Game Over", c_white, c_white, c_white, c_white, 1.0);
}