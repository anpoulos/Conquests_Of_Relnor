///scr_ui_menu_title_initialize

global.mapSaves = instance_create(0,0,obj_map_saves);
global.currentRoom = -1;
global.loadingInstances = false;

//create menu container
var _menuColor = make_colour_rgb(0,50,100);
var _menuColorArray = scr_create_obj_array4(_menuColor, _menuColor, _menuColor, _menuColor, "_menuColorArray");
var _menuPosArray = scr_create_obj_array4(-200,-300,200,300, "_menuPosArray");

var _centerX = _menuPosArray.item[2] + 20;
var _centerY = _menuPosArray.item[3] + 20;
var _menuContainer = scr_ui_menu_create_container(_centerX, _centerY, _menuPosArray, _menuColorArray, true, 0.7, noone);

scr_destroy_instance(_menuColorArray);
scr_destroy_instance(_menuPosArray);

///create start button
var _buttonColor = make_colour_rgb(0,50,125);
var _buttonPressedColor = make_colour_rgb(100,100,150);

var _buttonColorArray = scr_create_obj_array4(_buttonColor,_buttonColor,_buttonColor,_buttonColor, "_buttonColorArray");
var _buttonPositionArray = scr_create_obj_array4(-100,-30,100,30, "_buttonPositionArray");

var _fontColor = make_colour_rgb(200,200,200);

var _buttonInfo = scr_ui_get_obj_ui_button_information(10, scr_ui_menu_title_start_game,noone, "Empty Test Room", fnt_default_medium, 
_fontColor, 1, 0.5);

var _button = scr_ui_button_constructor(_menuContainer.x, _menuContainer.topY+40,
_buttonPositionArray, _buttonColorArray, _buttonPressedColor, 
true, _buttonInfo, _menuContainer);

_button.isVisible = true;
scr_destroy_instance(_buttonColorArray);
scr_destroy_instance(_buttonPositionArray);
    scr_destroy_instance(_buttonInfo);
//end start button

///create start large test button
var _buttonColor = make_colour_rgb(0,50,125);
var _buttonPressedColor = make_colour_rgb(100,100,150);

var _buttonColorArray = scr_create_obj_array4(_buttonColor,_buttonColor,_buttonColor,_buttonColor, "_buttonColorArray");
var _buttonPositionArray = scr_create_obj_array4(-100,-30,100,30, "_buttonPositionArray");

var _fontColor = make_colour_rgb(200,200,200);

var _buttonInfo = scr_ui_get_obj_ui_button_information(10, scr_ui_menu_title_start_large_test,noone, "Large Pincer Example", fnt_default_medium, 
_fontColor, 1, 0.5);

var _button2 = scr_ui_button_constructor(_menuContainer.x, _button.y+80,
_buttonPositionArray, _buttonColorArray, _buttonPressedColor, 
true, _buttonInfo, _menuContainer);

_button2.isVisible = true;
scr_destroy_instance(_buttonColorArray);
scr_destroy_instance(_buttonPositionArray);
    scr_destroy_instance(_buttonInfo);
//end start large test button

///create start large test3 button
var _buttonColor = make_colour_rgb(0,50,125);
var _buttonPressedColor = make_colour_rgb(100,100,150);

var _buttonColorArray = scr_create_obj_array4(_buttonColor,_buttonColor,_buttonColor,_buttonColor, "_buttonColorArray");
var _buttonPositionArray = scr_create_obj_array4(-100,-30,100,30, "_buttonPositionArray");

var _fontColor = make_colour_rgb(200,200,200);

var _buttonInfo = scr_ui_get_obj_ui_button_information(10, scr_ui_menu_title_start_large_test2, noone, "Test Room 2", fnt_default_medium, 
_fontColor, 1, 0.5);

var _button3 = scr_ui_button_constructor(_menuContainer.x, _button2.y+80,
_buttonPositionArray, _buttonColorArray, _buttonPressedColor, 
true, _buttonInfo, _menuContainer);

_button3.isVisible = true;
scr_destroy_instance(_buttonColorArray);
scr_destroy_instance(_buttonPositionArray);
    scr_destroy_instance(_buttonInfo);
//end start large test3 button

///create start large test4 button
var _buttonColor = make_colour_rgb(0,50,125);
var _buttonPressedColor = make_colour_rgb(100,100,150);

var _buttonColorArray = scr_create_obj_array4(_buttonColor,_buttonColor,_buttonColor,_buttonColor, "_buttonColorArray");
var _buttonPositionArray = scr_create_obj_array4(-100,-30,100,30, "_buttonPositionArray");

var _fontColor = make_colour_rgb(200,200,200);

var _buttonInfo = scr_ui_get_obj_ui_button_information(10, scr_ui_menu_title_start_large_test3, noone, "Test Room 3", fnt_default_medium, 
_fontColor, 1, 0.5);

var _button4 = scr_ui_button_constructor(_menuContainer.x, _button3.y+80,
_buttonPositionArray, _buttonColorArray, _buttonPressedColor, 
true, _buttonInfo, _menuContainer);

_button4.isVisible = true;
scr_destroy_instance(_buttonColorArray);
    scr_destroy_instance(_buttonInfo);

//end start large test4 button


_menuContainer.isVisible = true;

//Create title text
var _titleTextColor = make_colour_rgb(255,255,255);
var _titleTextX = display_get_gui_width() - 30;
var _titleTextY = display_get_gui_height() - 50;

var _titleText = scr_ui_font_constructor(_titleTextX, _titleTextY, STRING_GAME_TITLE, fnt_title_large, _titleTextColor, 0.8, fa_right, fa_center, noone);
_titleText.isVisible = true;
