///scr_ui_menus_pause_save_game

PauseMenuContainer.isVisible = false;
    
if(SaveGameMenuContainer != noone){
    SaveGameMenuContainer.isVisible = true;
    return true;
}

//Menu Container
    var _menuColor = make_colour_rgb(100,100,150);
    var _menuColorArray = scr_create_obj_array4_repeat(_menuColor, "_menuColorArray");
    
    var _halfWidth = display_get_gui_width()/2;
    var _halfHeight = display_get_gui_height()/2;
    
    var _menuPosArray = scr_create_obj_array4(-_halfWidth+200, -_halfHeight+200, 
                                            _halfWidth-200, _halfHeight-200, "_menuPosArray");
    var _menuX = _halfWidth;
    var _menuY = _halfHeight;
    
    SaveGameMenuContainer = scr_ui_menu_create_container(_menuX, _menuY, _menuPosArray, _menuColorArray, true, 0.9, noone);
    
    scr_destroy_instance(_menuColorArray);
    scr_destroy_instance(_menuPosArray);
//End of Menu Container

//Start of Close Menu Button
    var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,150), "_buttonColorArray");
    var _buttonPressedColor = make_colour_rgb(0,0,100);
    
    var _buttonPosArray = scr_create_obj_array4(-70, -20, 70, 20 ,"_buttonPosArray");
    
    var _fontColor = c_white;
    
    var _buttonX = SaveGameMenuContainer.leftX + _buttonPosArray.item[2] + 10;
    var _buttonY = SaveGameMenuContainer.topY + _buttonPosArray.item[3] + 10;
    
    var _buttonInfo = scr_ui_get_obj_ui_button_information(5, scr_ui_buttons_pause_save_game_close_menu, self, 
    "Close Menu", fnt_default_medium, _fontColor, 1.0, 0.8);
    
    var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
    _buttonColorArray, _buttonPressedColor, true, _buttonInfo, SaveGameMenuContainer);
    
    _button.isVisible = true;
    
    scr_destroy_instance(_buttonColorArray);
    scr_destroy_instance(_buttonPosArray);
    scr_destroy_instance(_buttonInfo);
//End of Close Menu Button

//Text
    var _textX = SaveGameMenuContainer.rightX - 300;
    var _textY = SaveGameMenuContainer.topY + 20;
    
    _text = scr_ui_font_constructor(_textX, _textY, "Save Game Slots: ", fnt_default_medium, c_white, 
            1.0, fa_left, fa_middle, SaveGameMenuContainer);
    _text.isVisible = true;
//End of Text

    var _buttonHeightOffset = 20;

//Start of Save Game 1 Button
    var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,150), "_buttonColorArray");
    var _buttonPressedColor = make_colour_rgb(0,0,100);
    
    var _buttonPosArray = scr_create_obj_array4(-100, -20, 100, 20 ,"_buttonPosArray");
    
    var _fontColor = c_white;
    
    var _buttonX = _text.x + _buttonPosArray.item[2];
    var _buttonY = _text.y + _buttonPosArray.item[3] + _buttonHeightOffset;
    
    var _buttonInfo = scr_ui_get_obj_ui_button_information(5, scr_ui_buttons_pause_save_game_1, self, 
    "Save Slot 1", fnt_default_medium, _fontColor, 1.0, 0.8);
    
    var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
    _buttonColorArray, _buttonPressedColor, true, _buttonInfo, SaveGameMenuContainer);
    
    _button.isVisible = true;
    
    scr_destroy_instance(_buttonColorArray);
    scr_destroy_instance(_buttonPosArray);
    scr_destroy_instance(_buttonInfo);
//End of Save Game 1 Button

SaveGameMenuContainer.isVisible = true;
