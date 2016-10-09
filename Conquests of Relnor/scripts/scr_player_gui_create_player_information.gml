///scr_player_gui_create_player_information

//create top right player information menu container
var _playerInformationMenuColor = make_colour_rgb(100,100,150);
var _playerInformationMenuColorArray = scr_create_obj_array4_repeat(_playerInformationMenuColor, "Player Information Menu Color Array");
var _playerInformationMenuPosArray = scr_create_obj_array4(-150,-50,150,50, "_playerInformationMenuPosArray");
var _playerInformationMenuX = display_get_gui_width() + _playerInformationMenuPosArray.item[0] - 10;
var _playerInformationMenuY = _playerInformationMenuPosArray.item[3] + 10;

PlayerInformationMenuContainer = scr_ui_menu_create_container(_playerInformationMenuX, _playerInformationMenuY,
_playerInformationMenuPosArray, _playerInformationMenuColorArray, true, 0.5, noone);

scr_destroy_instance(_playerInformationMenuColorArray);
scr_destroy_instance(_playerInformationMenuPosArray);
//end of player information menu

//Player Health Text
var _textX = PlayerInformationMenuContainer.leftX+10;
var _textY = PlayerInformationMenuContainer.topY+15;

PlayerInformationHealthText = scr_ui_font_constructor(_textX, _textY, "Health: ",fnt_default_medium, 
c_white, 1.0, fa_left, fa_middle, PlayerInformationMenuContainer);
PlayerInformationHealthText.isVisible = true;
//End of Player Health Text
