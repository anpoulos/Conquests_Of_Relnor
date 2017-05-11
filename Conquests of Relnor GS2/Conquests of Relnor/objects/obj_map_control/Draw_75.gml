
if(debug_mode){
	var _oD = depth;
	depth = -MAX;
	draw_circle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 5, false);
	depth = _oD;
}