///scr_player_mouse_global_left_pressed

var _mouseX = device_mouse_x_to_gui(0);
var _mouseY = device_mouse_y_to_gui(0);

if(scr_linked_list_size(ClickedUIObjects) > 0){
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
            scr_linked_list_add(ClickedUIObjects, _uiObject);
        }
    }
}

