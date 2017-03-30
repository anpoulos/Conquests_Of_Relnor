///scr_player_gui_party_create_character_panel(character, menuX, menuY)
///@param character
///@param menuX
///@param menuY


var _character = argument0;
var _menuX = argument1;
var _menuY = argument2;

var _charPanelColor = make_colour_rgb(100,100,150);
var _charPanelColors = scr_create_obj_array4_repeat(_charPanelColor, "_charPanelColor");

var _width = 80;
var _height = 80;

var _menuPosArray = scr_ui_menu_get_pos_array(_width, _height);

var _menuContainer = scr_ui_menu_create_container(_menuX, _menuY, _menuPosArray, _charPanelColors, true, 0.9, noone);

scr_ui_menu_container_add_draw_object(_menuContainer, PauseMenuPlayerInformationContainer);
_menuContainer.isVisible = true;

var _panel = instance_create(_menuContainer.x, _menuContainer.y, obj_ui_party_character_panel);
_panel.leftX = _menuContainer.leftX;
_panel.rightX = _menuContainer.rightX;
_panel.bottomY = _menuContainer.bottomY;
_panel.topY = _menuContainer.topY;

_panel.character = _character;
_panel.player = self;
_panel.menuContainer = _menuContainer;

_panel.isVisible = true;

scr_ui_menu_container_add_draw_object(_panel, _menuContainer);

scr_destroy_instance(_charPanelColors);
scr_destroy_instance(_menuPosArray);

return _panel;
