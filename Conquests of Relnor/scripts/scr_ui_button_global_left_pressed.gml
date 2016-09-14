///scr_ui_button_global_left_pressed
var _isInRectangle = point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 
    self.leftX, self.topY, 
    self.rightX, self.bottomY);

    if(_isInRectangle){
        if(self.menuContainer != noone){
            self.menuContainer.buttonPressed = true;
        }
        self.pressed = true;
        self.alarm[0] = self.delay;
    }
