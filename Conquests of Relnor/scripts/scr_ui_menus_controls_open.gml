///scr_ui_menus_controls_open

PauseMenuContainer.isVisible = false;
    
if(ControlMenuContainer != noone){
    ControlMenuContainer.isVisible = true;
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
    
    ControlMenuContainer = scr_ui_menu_create_container(_menuX, _menuY, _menuPosArray, _menuColorArray, true, 0.9, noone);
    
    scr_destroy_instance(_menuColorArray);
    scr_destroy_instance(_menuPosArray);
//End of Menu Container

//Start of Close Menu Button
    var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,150), "_buttonColorArray");
    var _buttonPressedColor = make_colour_rgb(0,0,100);
    
    var _buttonPosArray = scr_create_obj_array4(-70, -20, 70, 20 ,"_buttonPosArray");
    
    var _fontColor = c_white;
    
    var _buttonX = ControlMenuContainer.leftX + _buttonPosArray.item[2] + 10;
    var _buttonY = ControlMenuContainer.topY + _buttonPosArray.item[3] + 10;
    
    var _buttonInfo = scr_ui_get_obj_ui_button_information(5, scr_ui_buttons_controls_menu_close, self, 
    "Close Menu", fnt_default_medium, _fontColor, 1.0, 0.8);
    
    var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
    _buttonColorArray, _buttonPressedColor, true, _buttonInfo, ControlMenuContainer);
    
    _button.isVisible = true;
    
    scr_destroy_instance(_buttonColorArray);
    scr_destroy_instance(_buttonPosArray);
    scr_destroy_instance(_buttonInfo);
//End of Close Menu Button

var _textOffset = 20;

//Text
    var _textX = _button.x + 80;
    var _textY = ControlMenuContainer.topY + _textOffset;
    
    _text = scr_ui_font_constructor(_textX, _textY, "r (hold) + left click (hold) - selection box", fnt_default_medium, c_white, 
            1.0, fa_left, fa_middle, ControlMenuContainer);
    _text.isVisible = true;
//End of Text

//Text
    var _textX = _text.x;
    var _textY = _text.y + _textOffset;
    
    _text = scr_ui_font_constructor(_textX, _textY, "r (hold) + right click (hold) - deselection box", fnt_default_medium, c_white, 
            1.0, fa_left, fa_middle, ControlMenuContainer);
    _text.isVisible = true;
//End of Text

//Text
    var _textX = _text.x;
    var _textY = _text.y + _textOffset;
    
    _text = scr_ui_font_constructor(_textX, _textY, "t - talk to", fnt_default_medium, c_white, 
            1.0, fa_left, fa_middle, ControlMenuContainer);
    _text.isVisible = true;
//End of Text

//Text
    var _textX = _text.x;
    var _textY = _text.y + _textOffset;
    
    _text = scr_ui_font_constructor(_textX, _textY, "shift - attack", fnt_default_medium, c_white, 
            1.0, fa_left, fa_middle, ControlMenuContainer);
    _text.isVisible = true;
//End of Text

//Text
    var _textX = _text.x;
    var _textY = _text.y + _textOffset;
    
    _text = scr_ui_font_constructor(_textX, _textY, "space - dash", fnt_default_medium, c_white, 
            1.0, fa_left, fa_middle, ControlMenuContainer);
    _text.isVisible = true;
//End of Text

//Text
    var _textX = _text.x;
    var _textY = _text.y + _textOffset;
    
    _text = scr_ui_font_constructor(_textX, _textY, "q - deselect all", fnt_default_medium, c_white, 
            1.0, fa_left, fa_middle, ControlMenuContainer);
    _text.isVisible = true;
//End of Text

//Text
    var _textX = _text.x;
    var _textY = _text.y + _textOffset;
    
    _text = scr_ui_font_constructor(_textX, _textY, "e - enable engage mode", fnt_default_medium, c_white, 
            1.0, fa_left, fa_middle, ControlMenuContainer);
    _text.isVisible = true;
//End of Text

//Text
    var _textX = _text.x;
    var _textY = _text.y + _textOffset;
    
    _text = scr_ui_font_constructor(_textX, _textY, "ctrl + e - disable engage mode", fnt_default_medium, c_white, 
            1.0, fa_left, fa_middle, ControlMenuContainer);
    _text.isVisible = true;
//End of Text

//Text
    var _textX = _text.x;
    var _textY = _text.y + _textOffset;
    
    _text = scr_ui_font_constructor(_textX, _textY, "v - enable defensive mode", fnt_default_medium, c_white, 
            1.0, fa_left, fa_middle, ControlMenuContainer);
    _text.isVisible = true;
//End of Text

//Text
    var _textX = _text.x;
    var _textY = _text.y + _textOffset;
    
    _text = scr_ui_font_constructor(_textX, _textY, "ctrl+v - enable defensive mode", fnt_default_medium, c_white, 
            1.0, fa_left, fa_middle, ControlMenuContainer);
    _text.isVisible = true;
//End of Text

//Text
    var _textX = _text.x;
    var _textY = _text.y + _textOffset;
    
    _text = scr_ui_font_constructor(_textX, _textY, "f - square formation", fnt_default_medium, c_white, 
            1.0, fa_left, fa_middle, ControlMenuContainer);
    _text.isVisible = true;
//End of Text

//Text
    var _textX = _text.x;
    var _textY = _text.y + _textOffset;
    
    _text = scr_ui_font_constructor(_textX, _textY, "left click - select unit or command selected units", fnt_default_medium, c_white, 
            1.0, fa_left, fa_middle, ControlMenuContainer);
    _text.isVisible = true;
//End of Text

//Text
    var _textX = _text.x;
    var _textY = _text.y + _textOffset;
    
    _text = scr_ui_font_constructor(_textX, _textY, "right click - deselect", fnt_default_medium, c_white, 
            1.0, fa_left, fa_middle, ControlMenuContainer);
    _text.isVisible = true;
//End of Text

//Text
    var _textX = _text.x;
    var _textY = _text.y + _textOffset;
    
    _text = scr_ui_font_constructor(_textX, _textY, "scroll in/out - zoom in/out", fnt_default_medium, c_white, 
            1.0, fa_left, fa_middle, ControlMenuContainer);
    _text.isVisible = true;
//End of Text

//Text
    var _textX = _text.x;
    var _textY = _text.y + _textOffset;
    
    _text = scr_ui_font_constructor(_textX, _textY, "c - pause game", fnt_default_medium, c_white, 
            1.0, fa_left, fa_middle, ControlMenuContainer);
    _text.isVisible = true;
//End of Text


ControlMenuContainer.isVisible = true;
