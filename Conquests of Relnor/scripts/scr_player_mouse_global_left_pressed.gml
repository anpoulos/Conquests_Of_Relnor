///scr_player_mouse_global_left_pressed

var _mouseX = device_mouse_x_to_gui(0);
var _mouseY = device_mouse_y_to_gui(0);

if(ClickedUIObject != noone){
    return false;
}

for(var i = 0; i < instance_number(obj_ui_clickable_parent); i++){
    var _uiObject = instance_find(obj_ui_clickable_parent, i);
    if(_uiObject.isVisible && _uiObject.menuContainer == noone ||
        (_uiObject.menuContainer != noone && _uiObject.menuContainer.isVisible && _uiObject.isVisible)){
        var _isInButton = point_in_rectangle(_mouseX, _mouseY, 
        _uiObject.leftX, _uiObject.topY, _uiObject.rightX, _uiObject.bottomY);
        if(_isInButton){
            _uiObject.pressed = true;
            _uiObject.alarm[0] = _uiObject.delay;
            ClickedUIObject = _uiObject;
            break;
        }
    }
}

if(ClickedUIObject == noone){
    for(var i = 0; i < instance_number(obj_ui_menu_container); i++){
        var _menu = instance_find(obj_ui_menu_container, i);
        if(_menu.isVisible && _menu.menuContainer == noone){
            var _isInMenu = point_in_rectangle(_mouseX, _mouseY, 
            _menu.leftX, _menu.topY, _menu.rightX, _menu.bottomY);
            if(_isInMenu){
                ClickedUIObject = _menu;
                break;
            }
        }
    }
}
