///Check if clicked a button

var _mouseX = device_mouse_x_to_gui(0);
var _mouseY = device_mouse_y_to_gui(0);

for(var i = 0; i < instance_number(obj_ui_clickable_parent); i++){
    var _button = instance_find(obj_ui_clickable_parent, i);
    var _isInButton = point_in_rectangle(_mouseX, _mouseY, 
    _button.leftX, _button.topY, _button.rightX, _button.bottomY);
    if(_isInButton){
        _button.pressed = true;
		with(_button){
			scr_ui_draw_clickable_clicked();
		}
    }
}

