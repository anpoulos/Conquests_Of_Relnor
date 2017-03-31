///scr_player_gui_create_player_information

//create top right player information menu container
var _playerInformationMenuColor = make_colour_rgb(100,100,150);
var _playerInformationMenuColorArray = scr_create_obj_array4_repeat(_playerInformationMenuColor, "Player Information Menu Color Array");
var _playerInformationMenuPosArray = scr_create_obj_array4(-300,-50,300,50, "_playerInformationMenuPosArray");
var _playerInformationMenuX = display_get_gui_width() + _playerInformationMenuPosArray.item[0] - 10;
var _playerInformationMenuY = _playerInformationMenuPosArray.item[3] + 10;

PlayerInformationMenuContainer = scr_ui_menu_create_container(_playerInformationMenuX, _playerInformationMenuY,
_playerInformationMenuPosArray, _playerInformationMenuColorArray, true, 0.9, noone);

scr_destroy_instance(_playerInformationMenuColorArray);
scr_destroy_instance(_playerInformationMenuPosArray);
//end of player information menu

//Primary Attack Container
var _color = make_colour_rgb(100,100,150);
var _colorArray = scr_create_obj_array4_repeat(_color, "Color Array");
var _posArray = scr_create_obj_array4_ui(140, 80);
var _menuX = PlayerInformationMenuContainer.leftX + 70 + 10;
var _menuY = PlayerInformationMenuContainer.y;

PrimaryAttackContainer = scr_ui_menu_create_container(_menuX, _menuY,
	_posArray, _colorArray, true, 0.9, noone);

scr_destroy_instance(_colorArray);
scr_destroy_instance(_posArray);

scr_ui_menu_container_add_draw_object(PrimaryAttackContainer, PlayerInformationMenuContainer);

PrimaryAttackContainer.isVisible = true;
//end of Primary Attack Container

//primary attack text
var _textX = PrimaryAttackContainer.leftX + 10;
var _textY = PrimaryAttackContainer.topY + 20;

PrimaryAttackText = scr_ui_font_constructor(_textX, _textY, "Primary Attack: ",fnt_default_small, 
c_white, 1.0, fa_left, fa_middle, PrimaryAttackContainer);
PrimaryAttackText.isVisible = true;
//end of primary attack text

//primary attack icon
var _menuX = PrimaryAttackContainer.x;
var _menuY = PrimaryAttackContainer.bottomY - 30;

PrimaryAttackIcon = scr_ui_draw_sprite_constructor(_menuX, _menuY, noone, 0, PrimaryAttackContainer);
PrimaryAttackIcon.isVisible = true;
//end of primary attack icon

//Secondary Attack Container
var _color = make_colour_rgb(100,100,150);
var _colorArray = scr_create_obj_array4_repeat(_color, "Color Array");
var _posArray = scr_create_obj_array4_ui(140, 80);
var _menuX = PrimaryAttackContainer.rightX + 70 + 10;
var _menuY = PlayerInformationMenuContainer.y;

SecondaryAttackContainer = scr_ui_menu_create_container(_menuX, _menuY,
	_posArray, _colorArray, true, 0.9, noone);

scr_destroy_instance(_colorArray);
scr_destroy_instance(_posArray);

scr_ui_menu_container_add_draw_object(SecondaryAttackContainer, PlayerInformationMenuContainer);

SecondaryAttackContainer.isVisible = true;
//end of Secondary Attack Container

//primary attack text
var _textX = SecondaryAttackContainer.leftX + 10;
var _textY = SecondaryAttackContainer.topY + 20;

SecondaryAttackText = scr_ui_font_constructor(_textX, _textY, "Secondary Attack: ",fnt_default_small, 
c_white, 1.0, fa_left, fa_middle, SecondaryAttackContainer);
SecondaryAttackText.isVisible = true;
//end of primary attack text

//primary attack icon
var _menuX = SecondaryAttackContainer.x;
var _menuY = SecondaryAttackContainer.bottomY - 30;

SecondaryAttackIcon = scr_ui_draw_sprite_constructor(_menuX, _menuY, noone, 0, SecondaryAttackContainer);
SecondaryAttackIcon.isVisible = true;
//end of primary attack icon

//Player Health Bar
var _x = PlayerInformationMenuContainer.rightX - 200;
var _y = PlayerInformationMenuContainer.topY+20;
PlayerInformationHealthBar = instance_create(_x, _y, obj_ui_health_bar);
PlayerInformationHealthBar.isVisible = true;
scr_ui_menu_container_add_draw_object(PlayerInformationHealthBar, 
PlayerInformationMenuContainer);
//End of Player Health Bar

//Player Health Text
var _textX = PlayerInformationHealthBar.x + 80;
var _textY = PlayerInformationHealthBar.y;

PlayerInformationHealthText = scr_ui_font_constructor(_textX, _textY, "Health: ",fnt_default_medium_bold, 
c_white, 1.0, fa_left, fa_middle, PlayerInformationMenuContainer);
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
var _textX = PlayerInformationEnergyBar.x+80;
var _textY = PlayerInformationEnergyBar.y;

PlayerInformationEnergyText = scr_ui_font_constructor(_textX, _textY, "Energy: ",fnt_default_medium_bold, 
c_white, 1.0, fa_left, fa_middle, PlayerInformationMenuContainer);
PlayerInformationEnergyText.isVisible = true;
//End of Energy Health Text
