///scr_player_gui_create_command_menu

//create top left command menu container
var _commandMenuColor = make_colour_rgb(150,100,100); //grey shade of red
var _commandMenuColorArray = scr_create_obj_array4_repeat(_commandMenuColor);
var _commandMenuPosArray = scr_create_obj_array4(-90,-150,90,150);
var _commandMenuX = _commandMenuPosArray.item[2]+10;
var _commandMenuY = _commandMenuPosArray.item[3]+10;

CommandMenuContainer = scr_ui_menu_create_container(_commandMenuX, _commandMenuY, 
_commandMenuPosArray, _commandMenuColorArray, true, 0.5, noone);
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
    var _EnableEngageButtonColorArray = scr_create_obj_array4_repeat(_EnableEngageButtonColor);
    
    var _EnableEngageButtonPositionArray = scr_create_obj_array4(-20,-10,20,10);
    
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
//End of Engage Mode Button

//Disable Engage Button
    var _DisableEngageButtonColor = make_colour_rgb(50,150,50);
    var _DisableEngageButtonPressedColor = make_colour_rgb(0,100,0);
    var _DisableEngageButtonColorArray = scr_create_obj_array4_repeat(_DisableEngageButtonColor);
    
    var _DisableEngageButtonPositionArray = scr_create_obj_array4(-20,-10,20,10);
    
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
//End of Engage Mode Button

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
    var _EnableWanderButtonColorArray = scr_create_obj_array4_repeat(_EnableWanderButtonColor);
    
    var _EnableWanderButtonPositionArray = scr_create_obj_array4(-20,-10,20,10);
    
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
//End of Wander Mode Button


//Disable Wander
    var _DisableWanderButtonColor = make_colour_rgb(50,150,50);
    var _DisableWanderButtonPressedColor = make_colour_rgb(0,100,0);
    var _DisableWanderButtonColorArray = scr_create_obj_array4_repeat(_DisableWanderButtonColor);
    
    var _DisableWanderButtonPositionArray = scr_create_obj_array4(-20,-10,20,10);
    
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
//End of Wander Mode Button

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
    var _colorArray = scr_create_obj_array4_repeat(_color);
    
    var _positionArray = scr_create_obj_array4(-20,-10,20,10);
    
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
//End of Enable Defense Button

//Disable Defense Button
    var _color = make_colour_rgb(50,150,50);
    var _pressedColor = make_colour_rgb(0,100,0);
    var _colorArray = scr_create_obj_array4_repeat(_color);
    
    var _positionArray = scr_create_obj_array4(-20,-10,20,10);
    
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
//End of Disable Defense Button

//Deselect All Button
    var _DeselectButtonColor = make_colour_rgb(150,150,150);
    var _DeselectButtonPressedColor = make_colour_rgb(100,100,100);
    var _DeselectButtonColorArray = scr_create_obj_array4_repeat(_DeselectButtonColor);
    
    var _DeselectButtonPositionArray = scr_create_obj_array4(-80,-10,80,10);
    
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
    var _MoveButtonColorArray = scr_create_obj_array4_repeat(_MoveButtonColor);
    
    var _MoveButtonPositionArray = scr_create_obj_array4(-80,-10,80,10);
    
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
//End of Move All Button

//Square All Button
    var _SquareUnitsButtonColor = make_colour_rgb(100,100,150);
    var _SquareUnitsButtonPressedColor = make_colour_rgb(0,0,100);
    var _SquareUnitsButtonColorArray = scr_create_obj_array4_repeat(_SquareUnitsButtonColor);
    
    var _SquareUnitsButtonPositionArray = scr_create_obj_array4(-80,-10,80,10);
    
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
//End of Square All Button



