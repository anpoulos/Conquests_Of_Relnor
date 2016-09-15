///scr_player_create_gui

//create top left command menu container
var _commandMenuColor = make_colour_rgb(150,100,100); //grey shade of red
var _commandMenuColorArray = scr_create_obj_array4_repeat(_commandMenuColor);
var _commandMenuPosArray = scr_create_obj_array4(-90,-110,90,110);
var _commandMenuX = _commandMenuPosArray.item[2]+10;
var _commandMenuY = _commandMenuPosArray.item[3]+10;

CommandMenuContainer = scr_ui_menu_create_container(_commandMenuX, _commandMenuY, 
_commandMenuPosArray, _commandMenuColorArray, true, 0.5, noone);
//end of command menu

//create bottom left passive menu container
var _passiveMenuColor = make_colour_rgb(100,100,150); //grey shade of light blue
var _passiveMenuColorArray = scr_create_obj_array4_repeat(_passiveMenuColor);
var _passiveMenuPosArray = scr_create_obj_array4(-80,-100,80,100);
var _passiveMenuX = _passiveMenuPosArray.item[2]+10;
var _passiveMenuY = display_get_gui_height()-_passiveMenuPosArray.item[3]-10;

PassiveMenuContainer = scr_ui_menu_create_container(_passiveMenuX, _passiveMenuY, 
_passiveMenuPosArray, _passiveMenuColorArray, true, 0.5, noone);
//end of passive menu

//create bottom right command information menu container
var _commandInformationMenuColor = make_colour_rgb(100,100,150); //grey shade of light blue
var _commandInformationMenuColorArray = scr_create_obj_array4_repeat(_commandInformationMenuColor);
var _commandInformationMenuPosArray = scr_create_obj_array4(-150,-100,150,100);
var _commandInformationMenuX = display_get_gui_width()-_commandInformationMenuPosArray.item[2]-10;
var _commandInformationMenuY = display_get_gui_height()-_commandInformationMenuPosArray.item[3]-10;

CommandInformationMenuContainer = scr_ui_menu_create_container(_commandInformationMenuX, _commandInformationMenuY, 
_commandInformationMenuPosArray, _commandInformationMenuColorArray, true, 0.5, noone);
//end of bottom right command information menu container

PassiveMenuContainer.isVisible = true;

//create buttons and text

//Unit Information Text
var _unitInformationTextX = CommandInformationMenuContainer.leftX+100;
var _unitInformationTextY = CommandInformationMenuContainer.topY+20;

var UnitInformationText = scr_ui_font_constructor(_unitInformationTextX, _unitInformationTextY, 
"Selection Information: ",fnt_default_medium, 
c_white, 1.0, fa_center, fa_middle, CommandInformationMenuContainer);
UnitInformationText.isVisible = true;
//End of Unit Information Text

//Total Selected Information Text
var _totalSelectedTextX = CommandInformationMenuContainer.leftX+20;
var _totalSelectedTextY = UnitInformationText.y+20;

var _selectedText = "";

TotalSelectedText = scr_ui_font_constructor(_totalSelectedTextX, _totalSelectedTextY, 
_selectedText,fnt_default_medium, 
c_white, 1.0, fa_left, fa_middle, CommandInformationMenuContainer);
TotalSelectedText.isVisible = true;
//End of Total Selected Information Text

//Majority Engage Mode Text
var _majorityEnabledTextX = CommandInformationMenuContainer.leftX+20;
var _majorityEnabledTextY = TotalSelectedText.y+20;

var _majorityEnabledText = "";

TotalEngagedText = scr_ui_font_constructor(_majorityEnabledTextX, _majorityEnabledTextY, 
_majorityEnabledText,fnt_default_medium, 
c_white, 1.0, fa_left, fa_middle, CommandInformationMenuContainer);
TotalEngagedText.isVisible = true;
//Majority Engage Mode Text

//Majority Wander Mode Text
var _totalWanderTextX = CommandInformationMenuContainer.leftX+20;
var _totalWanderTextY = TotalEngagedText.y+20;

var _totalWanderText = "";

TotalWanderText = scr_ui_font_constructor(_totalWanderTextX, _totalWanderTextY, 
_totalWanderText,fnt_default_medium, 
c_white, 1.0, fa_left, fa_middle, CommandInformationMenuContainer);
TotalWanderText.isVisible = true;
//Majority Wander Mode Text

//Talk Button
    var _talkButtonColor = make_colour_rgb(50,50,150);
    var _talkButtonPressedColor = make_colour_rgb(0,0,100);
    var _talkButtonColorArray = scr_create_obj_array4_repeat(_talkButtonColor);
    
    var _talkButtonPositionArray = scr_create_obj_array4(-70,-20,70,20);
    
    var _fontColor = c_white;
    
    var _talkButtonX = PassiveMenuContainer.x;
    var _talkButtonY = PassiveMenuContainer.y-30;
    
    var _talkButtonInfo = scr_ui_get_obj_ui_button_information(5,noone,noone,"Talk To",fnt_default_medium,_fontColor,0.7,0.6);
    
    TalkButton = scr_ui_button_constructor(_talkButtonX,_talkButtonY, _talkButtonPositionArray, _talkButtonColorArray, 
    _talkButtonPressedColor, true, _talkButtonInfo, PassiveMenuContainer);
    
    TalkButton.isVisible = true;
//End of Talk Button

var _ButtonSpacing = 50;

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

//Disable Engage
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

//Deselect All Button
    var _DeselectButtonColor = make_colour_rgb(150,150,150);
    var _DeselectButtonPressedColor = make_colour_rgb(100,100,100);
    var _DeselectButtonColorArray = scr_create_obj_array4_repeat(_DeselectButtonColor);
    
    var _DeselectButtonPositionArray = scr_create_obj_array4(-80,-20,80,20);
    
    var _fontColor = c_white;
    
    var _DeselectButtonX = CommandMenuContainer.x;
    var _DeselectButtonY = DisableWanderButton.y+50;
    
    var _DeselectButtonInfo = 
    scr_ui_get_obj_ui_button_information(5,scr_player_commands_deselect_all,self,
    "Deselect All",fnt_default_medium,_fontColor,1.0,0.6);
    
    DeselectButton = scr_ui_button_constructor(_DeselectButtonX,_DeselectButtonY, 
    _DeselectButtonPositionArray, _DeselectButtonColorArray, 
    _DeselectButtonPressedColor, true, _DeselectButtonInfo, CommandMenuContainer);
    
    DeselectButton.isVisible = true;
//End of Deselect All Button




