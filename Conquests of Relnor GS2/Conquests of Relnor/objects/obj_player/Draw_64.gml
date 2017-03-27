///Draw

event_inherited();

if debug_mode {
	draw_text_color(30, 50, string_hash_to_newline("FPS = " + string(fps)), c_white, c_white, c_white, c_white, 1.0);
	draw_text_color(30, 100, "Time: "+string(global.time), c_white, c_white, c_white, c_white, 1.0);
	if(global.sun != noone){
		draw_text_color(30, 150, "Sun x,y : "+string(global.sun.x)+", "+string(global.sun.y), 
						c_white, c_white, c_white, c_white, 1.0);
	}
}



