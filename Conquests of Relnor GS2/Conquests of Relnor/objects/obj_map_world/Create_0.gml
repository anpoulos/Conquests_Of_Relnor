/// @description Insert description here
// You can write your code in this editor

var _tileOffset = 128;

global.worldMapGrid = mp_grid_create(-96,-96,room_width/_tileOffset, 
room_height/_tileOffset, _tileOffset, _tileOffset);
mp_potential_settings(45, 5, 5, true);

depth = -MAX;

///Create Next Turn Button
var _buttonColor = make_colour_rgb(0,50,125);
var _buttonPressedColor = make_colour_rgb(100,100,150);

var _buttonColorArray = scr_create_obj_array4(_buttonColor,_buttonColor,_buttonColor,_buttonColor, "_buttonColorArray");
var _buttonPositionArray = scr_create_obj_array4_ui(100, 50);

var _fontColor = make_colour_rgb(200,200,200);

var _buttonInfo = scr_ui_get_obj_ui_button_information(10, scr_map_world_next_turn, noone, "Next Turn", 
fnt_default_medium, _fontColor, 1, 0.5);

var _buttonX = 125;
var _buttonY = 75;

var _button = scr_ui_button_constructor(_buttonX, _buttonY,
_buttonPositionArray, _buttonColorArray, _buttonPressedColor, 
true, _buttonInfo, noone);

_button.isVisible = true;
scr_destroy_instance(_buttonColorArray);
scr_destroy_instance(_buttonPositionArray);
scr_destroy_instance(_buttonInfo);
//end Next Turn Button