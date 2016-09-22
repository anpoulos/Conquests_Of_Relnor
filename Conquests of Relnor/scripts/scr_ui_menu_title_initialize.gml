///scr_ui_menu_title_initialize

//create menu container
var _menuColor = make_colour_rgb(0,50,100);
var _menuColorArray = scr_create_obj_array4(_menuColor, _menuColor, _menuColor, _menuColor);
var _menuPosArray = scr_create_obj_array4(-200,-100,200,100);

var _centerX = _menuPosArray.item[2] + 20;
var _centerY = _menuPosArray.item[3] + 20;
var _menuContainer = scr_ui_menu_create_container(_centerX, _centerY, _menuPosArray, _menuColorArray, true, 0.7, noone);

///create button
var _buttonColor = make_colour_rgb(0,50,125);
var _buttonPressedColor = make_colour_rgb(100,100,150);

var _buttonColorArray = scr_create_obj_array4(_buttonColor,_buttonColor,_buttonColor,_buttonColor);
var _buttonPositionArray = scr_create_obj_array4(-100,-50,100,50);

var _fontColor = make_colour_rgb(200,200,200);

var _buttonInfo = scr_ui_get_obj_ui_button_information(10, scr_ui_menu_title_start_game,noone, "Start", fnt_default_medium, 
_fontColor, 1, 0.5);

var _button = scr_ui_button_constructor(_centerX, _centerY,
_buttonPositionArray, _buttonColorArray, _buttonPressedColor, 
true, _buttonInfo, _menuContainer);

_button.isVisible = true;
_menuContainer.isVisible = true;

//Create title text
var _titleTextColor = make_colour_rgb(255,255,255);
var _titleTextX = display_get_gui_width() - 30;
var _titleTextY = display_get_gui_height() - 50;

var _titleText = scr_ui_font_constructor(_titleTextX, _titleTextY, STRING_GAME_TITLE, fnt_title_large, _titleTextColor, 0.8, fa_right, fa_center, noone);
_titleText.isVisible = true;
