///scr_player_gui_create_command_selected_menu

//create bottom right command information menu container
var _commandInformationMenuColor = make_colour_rgb(100,100,150); //grey shade of light blue
var _commandInformationMenuColorArray = scr_create_obj_array4_repeat(_commandInformationMenuColor);
var _commandInformationMenuPosArray = scr_create_obj_array4(-150,-100,150,100);
var _commandInformationMenuX = display_get_gui_width()-_commandInformationMenuPosArray.item[2]-10;
var _commandInformationMenuY = display_get_gui_height()-_commandInformationMenuPosArray.item[3]-10;

CommandInformationMenuContainer = scr_ui_menu_create_container(_commandInformationMenuX, _commandInformationMenuY, 
_commandInformationMenuPosArray, _commandInformationMenuColorArray, true, 0.5, noone);
//end of bottom right command information menu container

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


