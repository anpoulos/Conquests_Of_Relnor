///scr_player_gui_create_player_information

//create top right player information menu container
var _playerInformationMenuColor = make_colour_rgb(100,100,150);
var _playerInformationMenuColorArray = scr_create_obj_array4_repeat(_playerInformationMenuColor, "Player Information Menu Color Array");
var _playerInformationMenuPosArray = scr_create_obj_array4(-150,-50,150,50, "_playerInformationMenuPosArray");
var _playerInformationMenuX = display_get_gui_width() + _playerInformationMenuPosArray.item[0] - 10;
var _playerInformationMenuY = _playerInformationMenuPosArray.item[3] + 10;

PlayerInformationMenuContainer = scr_ui_menu_create_container(_playerInformationMenuX, _playerInformationMenuY,
_playerInformationMenuPosArray, _playerInformationMenuColorArray, true, 0.9, noone);

scr_destroy_instance(_playerInformationMenuColorArray);
scr_destroy_instance(_playerInformationMenuPosArray);
//end of player information menu

//Player Health Bar
var _x = PlayerInformationMenuContainer.leftX+75;
var _y = PlayerInformationMenuContainer.topY+20;
PlayerInformationHealthBar = instance_create(_x, _y, obj_ui_health_bar);
PlayerInformationHealthBar.isVisible = true;
scr_ui_menu_container_add_draw_object(PlayerInformationHealthBar, 
PlayerInformationMenuContainer);
//End of Player Health Bar

//Player Health Text
var _textX = PlayerInformationMenuContainer.rightX-30;
var _textY = PlayerInformationHealthBar.y;

PlayerInformationHealthText = scr_ui_font_constructor(_textX, _textY, "Health: ",fnt_default_medium_bold, 
c_white, 1.0, fa_right, fa_middle, PlayerInformationMenuContainer);
PlayerInformationHealthText.isVisible = true;
//End of Player Health Text

//Player Energy Bar
var _x = PlayerInformationHealthBar.x;
var _y = PlayerInformationHealthBar.y+30;
PlayerInformationEnergyBar = instance_create(_x, _y, obj_ui_energy_bar);
PlayerInformationEnergyBar.isVisible = true;
scr_ui_menu_container_add_draw_object(PlayerInformationEnergyBar, 
PlayerInformationMenuContainer);
//End of Player Energy Bar

//Player Energy Text
var _textX = PlayerInformationMenuContainer.rightX-30;
var _textY = PlayerInformationEnergyBar.y;

PlayerInformationEnergyText = scr_ui_font_constructor(_textX, _textY, "Energy: ",fnt_default_medium_bold, 
c_white, 1.0, fa_right, fa_middle, PlayerInformationMenuContainer);
PlayerInformationEnergyText.isVisible = true;
//End of Energy Health Text
