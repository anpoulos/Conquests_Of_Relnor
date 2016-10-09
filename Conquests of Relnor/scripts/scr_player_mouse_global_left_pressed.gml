///scr_player_mouse_global_left_pressed

var _mouseX = device_mouse_x_to_gui(0);
var _mouseY = device_mouse_y_to_gui(0);

if(ClickedUIObject != noone){
    return false;
}

for(var i = 0; i < instance_number(obj_ui_button); i++){
    var _button = instance_find(obj_ui_button, i);
    if(_button.isVisible){
        var _isInButton = point_in_rectangle(_mouseX, _mouseY, 
        _button.leftX, _button.topY, _button.rightX, _button.bottomY);
        if(_isInButton){
            _button.pressed = true;
            _button.alarm[0] = _button.delay;
            ClickedUIObject = _button;
            break;
        }
    }
}

if(ClickedUIObject == noone){
    for(var i = 0; i < instance_number(obj_ui_menu_container); i++){
        var _menu = instance_find(obj_ui_menu_container, i);
        if(_menu.isVisible){
            var _isInMenu = point_in_rectangle(_mouseX, _mouseY, 
            _menu.leftX, _menu.topY, _menu.rightX, _menu.bottomY);
            if(_isInMenu){
                ClickedUIObject = _menu;
                break;
            }
        }
    }
}
