///scr_ui_menu_title_initialize

var _centerX = room_width/2;
var _centerY = room_height/2;

//create menu container
var _menuColor = make_colour_rgb(100,200,200);
var _menuColorArray = scr_create_obj_array4(_menuColor, _menuColor, _menuColor, _menuColor);
var _menuPosArray = scr_create_obj_array4(-100,-100,100,100);

var _menuContainer = scr_ui_menu_create_container(_centerX, _centerY, _menuPosArray, _menuColorArray, true, 1.0, noone);

///create button
var _buttonColor = make_colour_rgb(100,100,255);
var _buttonPressedColor = make_colour_rgb(100,100,150);

var _buttonColorArray = scr_create_obj_array4(_buttonColor,_buttonColor,_buttonColor,_buttonColor);
var _buttonPositionArray = scr_create_obj_array4(-50,-50,50,50);

var _fontColor = make_colour_rgb(200,200,200);

var _buttonInfo = scr_ui_get_obj_ui_button_information(10, scr_ui_menu_title_start_game,noone, "Start", fnt_default_medium, 
_fontColor, 1, 1);

var _button = scr_ui_button_constructor(_centerX, _centerY,
_buttonPositionArray, _buttonColorArray, _buttonPressedColor, 
true, _buttonInfo, _menuContainer);

_button.isVisible = true;
_menuContainer.isVisible = true;

