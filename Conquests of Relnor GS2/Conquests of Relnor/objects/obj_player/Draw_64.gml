///Draw

event_inherited();

if (global.debug > 0) {
	draw_text_color(30, 50, string_hash_to_newline("FPS = " + string(fps)), c_white, c_white, c_white, c_white, 1.0);
	draw_text_color(30, 100, "Time: "+string(global.time), c_white, c_white, c_white, c_white, 1.0);
	if(!global.isInterior){
		draw_text_color(30, 150, "Sun x,y : "+string(global.sun.x)+", "+string(global.sun.y), 
						c_white, c_white, c_white, c_white, 1.0);
	}
	draw_text_color(30,200, "Player x,y : "+string(x)+", "+string(y), 
		c_white, c_white,c_white,c_white, 1.0);
	draw_text_color(30,250, "SleepTime : "+string(originalSleepTime), 
		c_white, c_white,c_white,c_white, 1.0);
}


if(MoveItem != noone){
	if(virtualMouse != noone && virtualMouse.gui){
		draw_sprite(MoveItem.icon, 0, 
			virtualMouse.mouseX, 
			virtualMouse.mouseY);
	}
	else{
		draw_sprite(MoveItem.icon, 0, 
			device_mouse_x_to_gui(0), 
			device_mouse_y_to_gui(0));
	}
}
