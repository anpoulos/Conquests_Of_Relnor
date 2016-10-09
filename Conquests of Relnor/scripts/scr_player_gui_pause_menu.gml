///scr_player_gui_pause_menu

scr_player_enable_busy();
    
for(var i = 0; i < scr_linked_list_size(Menus); i++){
    var _menu = scr_linked_list_get_next(Menus);
    if(instance_exists(_menu)){
        _menu.wasVisible = _menu.isVisible;
        _menu.isVisible = false;
    }
}

if(PauseMenuContainer != noone){
    PauseMenuContainer.isVisible = true;
    return true;
}

//Menu Container
    var _menuColor = make_colour_rgb(100,100,150);
    var _menuColorArray = scr_create_obj_array4_repeat(_menuColor, "_menuColorArray");
    
    var _halfWidth = display_get_gui_width()/2;
    var _halfHeight = display_get_gui_height()/2;
    
    var _menuPosArray = scr_create_obj_array4(-_halfWidth+100, -_halfHeight+100, 
                                            _halfWidth-100, _halfHeight-100, "_menuPosArray");
    var _menuX = _halfWidth;
    var _menuY = _halfHeight;
    
    PauseMenuContainer = scr_ui_menu_create_container(_menuX, _menuY, _menuPosArray, _menuColorArray, true, 0.9, noone);
    
    scr_destroy_instance(_menuColorArray);
    scr_destroy_instance(_menuPosArray);
//End of Menu Container


//Start of Close Menu Button
    var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,150), "_buttonColorArray");
    var _buttonPressedColor = make_colour_rgb(0,0,100);
    
    var _buttonPosArray = scr_create_obj_array4(-70, -20, 70, 20, "_buttonPosArray");
    
    var _fontColor = c_white;
    
    var _buttonX = PauseMenuContainer.leftX + _buttonPosArray.item[2] + 10;
    var _buttonY = PauseMenuContainer.topY + _buttonPosArray.item[3] + 10;
    
    var _buttonInfo = scr_ui_get_obj_ui_button_information(5, scr_ui_button_pause_close, self, 
    "Close Menu", fnt_default_medium, _fontColor, 1.0, 0.8);
    
    var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
    _buttonColorArray, _buttonPressedColor, true, _buttonInfo, PauseMenuContainer);
    
    _button.isVisible = true;
    
    scr_destroy_instance(_buttonColorArray);
    scr_destroy_instance(_buttonPosArray);
    scr_destroy_instance(_buttonInfo);
//End of Close Menu Button

    var _buttonOffset = 40;

//Start of Save Game Button
    var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,150), "_buttonColorArray");
    var _buttonPressedColor = make_colour_rgb(0,0,100);
    
    var _buttonPosArray = scr_create_obj_array4(-70, -20, 70, 20, "_buttonPosArray");
    
    var _fontColor = c_white;
    
    var _buttonX = _button.x;
    var _buttonY = _button.y + _buttonPosArray.item[3] + _buttonOffset;
    
    var _buttonInfo = scr_ui_get_obj_ui_button_information(5, noone, noone, 
    "Save Game", fnt_default_medium, _fontColor, 1.0, 0.8);
    
    var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
    _buttonColorArray, _buttonPressedColor, true, _buttonInfo, PauseMenuContainer);
    
    _button.isVisible = true;
    
    scr_destroy_instance(_buttonColorArray);
    scr_destroy_instance(_buttonPosArray);
    scr_destroy_instance(_buttonInfo);
//End of Save Game Button


//Start of Controls Button
    var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,150), "_buttonColorArray");
    var _buttonPressedColor = make_colour_rgb(0,0,100);
    
    var _buttonPosArray = scr_create_obj_array4(-70, -20, 70, 20, "_buttonPosArray");
    
    var _fontColor = c_white;
    
    var _buttonX = _button.x;
    var _buttonY = _button.y + _buttonPosArray.item[3] + _buttonOffset;
    
    var _buttonInfo = scr_ui_get_obj_ui_button_information(5, scr_ui_button_pause_menu_controls_open, self, 
    "Controls", fnt_default_medium, _fontColor, 1.0, 0.8);
    
    var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
    _buttonColorArray, _buttonPressedColor, true, _buttonInfo, PauseMenuContainer);
    
    _button.isVisible = true;
    
    scr_destroy_instance(_buttonColorArray);
    scr_destroy_instance(_buttonPosArray);
    scr_destroy_instance(_buttonInfo);
//End of Controls Button


//Start of Video Settings Button

//End of Video Settings Button


//Start of Quit Game Button

//End of Quite Game Button
                
                
PauseMenuContainer.isVisible = true;


