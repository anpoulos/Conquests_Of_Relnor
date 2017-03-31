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

var _texts = scr_linked_list_create();
scr_linked_list_add(_texts, "t - activate object/talk to NPC");
scr_linked_list_add(_texts, "shift - attack");
scr_linked_list_add(_texts, "ctrl+shift - cycle attacks");
scr_linked_list_add(_texts, "space - dash");
scr_linked_list_add(_texts, "e - use magic");
scr_linked_list_add(_texts, "ctrl+e - cycle magic");

scr_linked_list_add(_texts, "left click - select unit or command selected units");
scr_linked_list_add(_texts, "right click - deselect unit");
scr_linked_list_add(_texts, "r (hold) + left click (hold) - selection box");
scr_linked_list_add(_texts, "r (hold) + right click (hold) - deselection box");
scr_linked_list_add(_texts, "q - deselect all");
scr_linked_list_add(_texts, "c - enable engage mode");
scr_linked_list_add(_texts, "ctrl + c - disable engage mode");
scr_linked_list_add(_texts, "v - enable defensive mode");
scr_linked_list_add(_texts, "ctrl+v - enable defensive mode");
scr_linked_list_add(_texts, "f - square formation");
scr_linked_list_add(_texts, "scroll in/out - zoom in/out");

var _yOffset = 25;
var _currentX = _button.x + 100;
var _currentY = ControlMenuContainer.topY + _yOffset;

while(!scr_linked_list_is_empty(_texts)){
	var _text = scr_linked_list_remove_next(_texts);
    
    var _textDraw = scr_ui_font_constructor(_currentX, _currentY, _text, fnt_default_medium, c_white, 
            1.0, fa_left, fa_middle, ControlMenuContainer);
    _textDraw.isVisible = true;
	_currentY += _yOffset;
}

scr_linked_list_destroy(_texts);

ControlMenuContainer.isVisible = true;
