///scr_player_gui_create_command_menu

//create top left command menu container
var _commandMenuColor = make_colour_rgb(150,100,100); //grey shade of red
var _commandMenuColorArray = scr_create_obj_array4_repeat(_commandMenuColor, "_commandMenuColorArray");
var _commandMenuPosArray = scr_create_obj_array4(-120,-150,120,150, "_commandMenuPosArray");
var _commandMenuX = _commandMenuPosArray.item[2]+10;
var _commandMenuY = _commandMenuPosArray.item[3]+10;

CommandMenuContainer = scr_ui_menu_create_container(_commandMenuX, _commandMenuY, 
_commandMenuPosArray, _commandMenuColorArray, true, 0.5, noone);

scr_destroy_instance(_commandMenuColorArray);
scr_destroy_instance(_commandMenuPosArray);
//end of command menu

//Engage Text
var _engageTextX = CommandMenuContainer.leftX+40;
var _engageTextY = CommandMenuContainer.topY+30;

var EngageText = scr_ui_font_constructor(_engageTextX, _engageTextY, "Engage: ",fnt_default_medium, 
c_white, 1.0, fa_center, fa_middle, CommandMenuContainer);
EngageText.isVisible = true;
//End of Engage Text

//Enable Engage
    var _EnableEngageButtonColor = make_colour_rgb(150,50,50);
    var _EnableEngageButtonPressedColor = make_colour_rgb(100,0,0);
    var _EnableEngageButtonColorArray = scr_create_obj_array4_repeat(_EnableEngageButtonColor,"_EnableEngageButtonColorArray");
    
    var _EnableEngageButtonPositionArray = scr_create_obj_array4(-20,-10,20,10,"_EnableEngageButtonPositionArray");
    
    var _fontColor = c_white;
    
    var _EnableEngageButtonX = EngageText.x+55;
    var _EnableEngageButtonY = EngageText.y;
    
    var _EnableEngageButtonInfo = 
    scr_ui_get_obj_ui_button_information(5,scr_player_commands_selected_enable_engage,self,
    "Enable",fnt_default_small,_fontColor,1.0,0.6);
    
    EnableEngageButton = scr_ui_button_constructor(_EnableEngageButtonX,_EnableEngageButtonY, 
    _EnableEngageButtonPositionArray, _EnableEngageButtonColorArray, 
    _EnableEngageButtonPressedColor, true, _EnableEngageButtonInfo, CommandMenuContainer);
    
    EnableEngageButton.isVisible = true;
    
    scr_destroy_instance(_EnableEngageButtonColorArray);
    scr_destroy_instance(_EnableEngageButtonPositionArray);
    scr_destroy_instance(_EnableEngageButtonInfo);
//End of Engage Mode Button

//Disable Engage Button
    var _DisableEngageButtonColor = make_colour_rgb(50,150,50);
    var _DisableEngageButtonPressedColor = make_colour_rgb(0,100,0);
    var _DisableEngageButtonColorArray = scr_create_obj_array4_repeat(_DisableEngageButtonColor,"_DisableEngageButtonColorArray");
    
    var _DisableEngageButtonPositionArray = scr_create_obj_array4(-20,-10,20,10, "_DisableEngageButtonPositionArray");
    
    var _fontColor = c_white;
    
    var _DisableEngageButtonX = EnableEngageButton.x+50;
    var _DisableEngageButtonY = EngageText.y;
    
    var _DisableEngageButtonInfo = 
    scr_ui_get_obj_ui_button_information(5,scr_player_commands_selected_disable_engage,self,
    "Disable",fnt_default_small,_fontColor,1.0,0.6);
    
    DisableEngageButton = scr_ui_button_constructor(_DisableEngageButtonX,_DisableEngageButtonY, 
    _DisableEngageButtonPositionArray, _DisableEngageButtonColorArray, 
    _DisableEngageButtonPressedColor, true, _DisableEngageButtonInfo, CommandMenuContainer);
    
    DisableEngageButton.isVisible = true;
    
    scr_destroy_instance(_DisableEngageButtonColorArray);
    scr_destroy_instance(_DisableEngageButtonPositionArray);
    scr_destroy_instance(_DisableEngageButtonInfo);
//End of Engage Mode Button

//Engage Range Button
    var _DisableEngageButtonColor = make_colour_rgb(50,150,50);
    var _DisableEngageButtonPressedColor = make_colour_rgb(0,100,0);
    var _DisableEngageButtonColorArray = scr_create_obj_array4_repeat(_DisableEngageButtonColor,"_DisableEngageButtonColorArray");
    
    var _DisableEngageButtonPositionArray = scr_create_obj_array4(-30,-10,30,10, "_DisableEngageButtonPositionArray");
    
    var _fontColor = c_white;
    
    var _DisableEngageButtonX = DisableEngageButton.x+60;
    var _DisableEngageButtonY = DisableEngageButton.y;
    
    var _DisableEngageButtonInfo = 
    scr_ui_get_obj_ui_button_information(5,scr_ui_button_engage_range_clicked,self,
    "Set Range",fnt_default_small,_fontColor,1.0,0.6);
    
    var _button = scr_ui_button_constructor(_DisableEngageButtonX,_DisableEngageButtonY, 
    _DisableEngageButtonPositionArray, _DisableEngageButtonColorArray, 
    _DisableEngageButtonPressedColor, true, _DisableEngageButtonInfo, CommandMenuContainer);
    
    _button.isVisible = true;
    
    scr_destroy_instance(_DisableEngageButtonColorArray);
    scr_destroy_instance(_DisableEngageButtonPositionArray);
    scr_destroy_instance(_DisableEngageButtonInfo);
//End of Engage Range Button

//Wander Text
var _wanderTextX = CommandMenuContainer.leftX+40;
var _wanderTextY = EngageText.y+30;

var WanderText = scr_ui_font_constructor(_wanderTextX, _wanderTextY, "Wander: ",fnt_default_medium, 
c_white, 1.0, fa_center, fa_middle, CommandMenuContainer);
WanderText.isVisible = true;
//End of Wander Text

//Enable Wander
    var _EnableWanderButtonColor = make_colour_rgb(150,50,50);
    var _EnableWanderButtonPressedColor = make_colour_rgb(100,0,0);
    var _EnableWanderButtonColorArray = scr_create_obj_array4_repeat(_EnableWanderButtonColor, "_EnableWanderButtonColorArray");
    
    var _EnableWanderButtonPositionArray = scr_create_obj_array4(-20,-10,20,10, "_EnableWanderButtonPositionArray");
    
    var _fontColor = c_white;
    
    var _EnableWanderButtonX = WanderText.x+55;
    var _EnableWanderButtonY = WanderText.y;
    
    var _EnableWanderButtonInfo = 
    scr_ui_get_obj_ui_button_information(5,scr_player_commands_selected_enable_wander,self,
    "Enable",fnt_default_small,_fontColor,1.0,0.6);
    
    
    EnableWanderButton = scr_ui_button_constructor(_EnableWanderButtonX,_EnableWanderButtonY, 
    _EnableWanderButtonPositionArray, _EnableWanderButtonColorArray, 
    _EnableWanderButtonPressedColor, true, _EnableWanderButtonInfo, CommandMenuContainer);
    
    EnableWanderButton.isVisible = true;
    
    scr_destroy_instance(_EnableWanderButtonColorArray);
    scr_destroy_instance(_EnableWanderButtonPositionArray);
    scr_destroy_instance(_EnableWanderButtonInfo);
//End of Wander Mode Button

//Disable Wander
    var _DisableWanderButtonColor = make_colour_rgb(50,150,50);
    var _DisableWanderButtonPressedColor = make_colour_rgb(0,100,0);
    var _DisableWanderButtonColorArray = scr_create_obj_array4_repeat(_DisableWanderButtonColor, "_DisableWanderButtonColorArray");
    
    var _DisableWanderButtonPositionArray = scr_create_obj_array4(-20,-10,20,10, "_DisableWanderButtonPositionArray");
    
    var _fontColor = c_white;
    
    var _DisableWanderButtonX = EnableWanderButton.x+50;
    var _DisableWanderButtonY = WanderText.y;
    
    var _DisableWanderButtonInfo = 
    scr_ui_get_obj_ui_button_information(5,scr_player_commands_selected_disable_wander,self,
    "Disable",fnt_default_small,_fontColor,1.0,0.6);
    
    DisableWanderButton = scr_ui_button_constructor(_DisableWanderButtonX,_DisableWanderButtonY, 
    _DisableWanderButtonPositionArray, _DisableWanderButtonColorArray, 
    _DisableWanderButtonPressedColor, true, _DisableWanderButtonInfo, CommandMenuContainer);
    
    DisableWanderButton.isVisible = true;
    scr_destroy_instance(_DisableWanderButtonColorArray);
    scr_destroy_instance(_DisableWanderButtonPositionArray);
    scr_destroy_instance(_DisableWanderButtonInfo);
//End of Wander Mode Button

//Wander Range Button
    var _DisableEngageButtonColor = make_colour_rgb(50,150,50);
    var _DisableEngageButtonPressedColor = make_colour_rgb(0,100,0);
    var _DisableEngageButtonColorArray = scr_create_obj_array4_repeat(_DisableEngageButtonColor,"_DisableEngageButtonColorArray");
    
    var _DisableEngageButtonPositionArray = scr_create_obj_array4(-30,-10,30,10, "_DisableEngageButtonPositionArray");
    
    var _fontColor = c_white;
    
    var _DisableEngageButtonX = DisableWanderButton.x+60;
    var _DisableEngageButtonY = DisableWanderButton.y;
    
    var _DisableEngageButtonInfo = 
    scr_ui_get_obj_ui_button_information(5,scr_ui_button_wander_range_clicked,self,
    "Set Wander",fnt_default_small,_fontColor,1.0,0.6);
    
    var _button = scr_ui_button_constructor(_DisableEngageButtonX,_DisableEngageButtonY, 
    _DisableEngageButtonPositionArray, _DisableEngageButtonColorArray, 
    _DisableEngageButtonPressedColor, true, _DisableEngageButtonInfo, CommandMenuContainer);
    
    _button.isVisible = true;
    
    scr_destroy_instance(_DisableEngageButtonColorArray);
    scr_destroy_instance(_DisableEngageButtonPositionArray);
    scr_destroy_instance(_DisableEngageButtonInfo);
//End of Wander Range Button

//Defense Text
var _x = CommandMenuContainer.leftX+40;
var _y = DisableWanderButton.y+30;

var _text = scr_ui_font_constructor(_x, _y, "Defend: ",fnt_default_medium, 
c_white, 1.0, fa_center, fa_middle, CommandMenuContainer);
_text.isVisible = true;
//End of Defense Text

//Enable Defense Button
    var _color = make_colour_rgb(150,50,50);
    var _pressedColor = make_colour_rgb(100,0,0);
    var _colorArray = scr_create_obj_array4_repeat(_color, "_colorArray");
    
    var _positionArray = scr_create_obj_array4(-20,-10,20,10, "_positionArray");
    
    var _fontColor = c_white;
    
    var _x = _text.x+55;
    var _y = _text.y;
    
    var _buttonInformation = 
    scr_ui_get_obj_ui_button_information(5,scr_player_commands_selected_enable_defense,self,
    "Enable",fnt_default_small,_fontColor,1.0,0.6);
    
    EnableDefenseButton = scr_ui_button_constructor(_x,_y, 
    _positionArray, _colorArray, 
    _pressedColor, true, _buttonInformation, CommandMenuContainer);
    
    EnableDefenseButton.isVisible = true;
    scr_destroy_instance(_colorArray);
    scr_destroy_instance(_positionArray);
    scr_destroy_instance(_buttonInformation);
//End of Enable Defense Button

//Disable Defense Button
    var _color = make_colour_rgb(50,150,50);
    var _pressedColor = make_colour_rgb(0,100,0);
    var _colorArray = scr_create_obj_array4_repeat(_color, "_colorArray");
    
    var _positionArray = scr_create_obj_array4(-20,-10,20,10, "_positionArray");
    
    var _fontColor = c_white;
    
    var _x = EnableDefenseButton.x+50;
    var _y = _text.y;
    
    var _buttonInformation = 
    scr_ui_get_obj_ui_button_information(5,scr_player_commands_selected_disable_defense,self,
    "Disable",fnt_default_small,_fontColor,1.0,0.6);
    
    DisableDefenseButton = scr_ui_button_constructor(_x,_y, 
    _positionArray, _colorArray, 
    _pressedColor, true, _buttonInformation, CommandMenuContainer);
    
    DisableDefenseButton.isVisible = true;
    scr_destroy_instance(_colorArray);
    scr_destroy_instance(_positionArray);
    scr_destroy_instance(_buttonInformation);
//End of Disable Defense Button

//Deselect All Button
    var _DeselectButtonColor = make_colour_rgb(150,150,150);
    var _DeselectButtonPressedColor = make_colour_rgb(100,100,100);
    var _DeselectButtonColorArray = scr_create_obj_array4_repeat(_DeselectButtonColor, "_DeselectButtonColorArray");
    
    var _DeselectButtonPositionArray = scr_create_obj_array4(-80,-10,80,10, "_DeselectButtonPositionArray");
    
    var _fontColor = c_white;
    
    var _DeselectButtonX = CommandMenuContainer.x;
    var _DeselectButtonY = EnableDefenseButton.y+35;
    
    var _DeselectButtonInfo = 
    scr_ui_get_obj_ui_button_information(5,scr_player_commands_deselect_all,self,
    "Deselect All",fnt_default_small,_fontColor,1.0,0.6);
    
    DeselectButton = scr_ui_button_constructor(_DeselectButtonX,_DeselectButtonY, 
    _DeselectButtonPositionArray, _DeselectButtonColorArray, 
    _DeselectButtonPressedColor, true, _DeselectButtonInfo, CommandMenuContainer);
    
    DeselectButton.isVisible = true;
    scr_destroy_instance(_DeselectButtonColorArray);
    scr_destroy_instance(_DeselectButtonPositionArray);
    scr_destroy_instance(_DeselectButtonInfo);
//End of Deselect All Button

//Mouse Actions Text
var _mouseActionsTextX = CommandMenuContainer.x;
var _mouseActionsTextY = DeselectButton.y+30;

var MouseActionText = scr_ui_font_constructor(_mouseActionsTextX, _mouseActionsTextY, "Mouse Actions",fnt_default_medium, 
c_white, 1.0, fa_center, fa_middle, CommandMenuContainer);
MouseActionText.isVisible = true;
//End of Mouse Actions Text

//Move All Button
    var _MoveButtonColor = make_colour_rgb(100,100,150);
    var _MoveButtonPressedColor = make_colour_rgb(0,0,100);
    var _MoveButtonColorArray = scr_create_obj_array4_repeat(_MoveButtonColor, "_MoveButtonColorArray");
    
    var _MoveButtonPositionArray = scr_create_obj_array4(-80,-10,80,10, "_MoveButtonPositionArray");
    
    var _fontColor = c_white;
    
    var _MoveButtonX = CommandMenuContainer.x;
    var _MoveButtonY = MouseActionText.y+30;
    
    var _MoveButtonInfo = 
    scr_ui_get_obj_ui_button_information(5,scr_ui_button_commands_enable_move,self,
    "Move Selected Units",fnt_default_small,_fontColor,1.0,0.6);
    
    MoveButton = scr_ui_button_constructor(_MoveButtonX,_MoveButtonY, 
    _MoveButtonPositionArray, _MoveButtonColorArray, 
    _MoveButtonPressedColor, true, _MoveButtonInfo, CommandMenuContainer);
    
    MoveButton.isVisible = true;
    scr_destroy_instance(_MoveButtonColorArray);
    scr_destroy_instance(_MoveButtonPositionArray);
    scr_destroy_instance(_MoveButtonInfo);
//End of Move All Button

//Square All Button
    var _SquareUnitsButtonColor = make_colour_rgb(100,100,150);
    var _SquareUnitsButtonPressedColor = make_colour_rgb(0,0,100);
    var _SquareUnitsButtonColorArray = scr_create_obj_array4_repeat(_SquareUnitsButtonColor, "_SquareUnitsButtonColorArray");
    
    var _SquareUnitsButtonPositionArray = scr_create_obj_array4(-80,-10,80,10, "_SquareUnitsButtonPositionArray");
    
    var _fontColor = c_white;
    
    var _SquareUnitsButtonX = CommandMenuContainer.x;
    var _SquareUnitsButtonY = MoveButton.y+30;
    
    var _SquareUnitsButtonInfo = 
    scr_ui_get_obj_ui_button_information(5,scr_ui_button_commands_square_formation,self,
    "Square Selected Units",fnt_default_small,_fontColor,1.0,0.6);
    
    SquareUnitsButton = scr_ui_button_constructor(_SquareUnitsButtonX,_SquareUnitsButtonY, 
    _SquareUnitsButtonPositionArray, _SquareUnitsButtonColorArray, 
    _SquareUnitsButtonPressedColor, true, _SquareUnitsButtonInfo, CommandMenuContainer);
    
    SquareUnitsButton.isVisible = true;
    scr_destroy_instance(_SquareUnitsButtonColorArray);
    scr_destroy_instance(_SquareUnitsButtonPositionArray);
    scr_destroy_instance(_SquareUnitsButtonInfo);
//End of Square All Button

//Follow Button
    var _SquareUnitsButtonColor = make_colour_rgb(100,100,150);
    var _SquareUnitsButtonPressedColor = make_colour_rgb(0,0,100);
    var _SquareUnitsButtonColorArray = scr_create_obj_array4_repeat(_SquareUnitsButtonColor, "_SquareUnitsButtonColorArray");
    
    var _SquareUnitsButtonPositionArray = scr_create_obj_array4(-80,-10,80,10, "_SquareUnitsButtonPositionArray");
    
    var _fontColor = c_white;
    
    var _SquareUnitsButtonX = CommandMenuContainer.x;
    var _SquareUnitsButtonY = SquareUnitsButton.y+30;
    
    var _SquareUnitsButtonInfo = 
    scr_ui_get_obj_ui_button_information(5,scr_ui_button_commands_follow,self,
    "Follow",fnt_default_small,_fontColor,1.0,0.6);
    
    FollowButton = scr_ui_button_constructor(_SquareUnitsButtonX,_SquareUnitsButtonY, 
    _SquareUnitsButtonPositionArray, _SquareUnitsButtonColorArray, 
    _SquareUnitsButtonPressedColor, true, _SquareUnitsButtonInfo, CommandMenuContainer);
    
    FollowButton.isVisible = true;
    scr_destroy_instance(_SquareUnitsButtonColorArray);
    scr_destroy_instance(_SquareUnitsButtonPositionArray);
    scr_destroy_instance(_SquareUnitsButtonInfo);
//Follow Button


