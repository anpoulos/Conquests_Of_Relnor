///scr_player_create_gui

//create top left menu container
var _commandMenuColor = make_colour_rgb(100,100,150);
var _commandMenuColorArray = scr_create_obj_array4_repeat(_commandMenuColor);
var _commandMenuPosArray = scr_create_obj_array4(-80,-100,80,100);
var _commandMenuX = _commandMenuPosArray.item[2]+10;
var _commandMenuY = _commandMenuPosArray.item[3]+10;

CommandMenuContainer = scr_ui_menu_create_container(_commandMenuX, _commandMenuY, 
_commandMenuPosArray, _commandMenuColorArray, true, 0.5);

//create buttons

//Talk Button
    var _talkButtonColor = make_colour_rgb(50,50,150);
    var _talkButtonPressedColor = make_colour_rgb(0,0,100);
    var _talkButtonColorArray = scr_create_obj_array4_repeat(_talkButtonColor);
    
    var _talkButtonPositionArray = scr_create_obj_array4(-70,-20,70,20);
    
    var _fontColor = c_white;
    
    var _talkButtonX = CommandMenuContainer.x;
    var _talkButtonY = CommandMenuContainer.y-30;
    
    var _talkButtonInfo = scr_ui_get_obj_ui_button_information(5,noone,"Talk To",fnt_default_medium,_fontColor,0.7,0.6);
    
    TalkButton = scr_ui_button_constructor(_talkButtonX,_talkButtonY, _talkButtonPositionArray, _talkButtonColorArray, 
    _talkButtonPressedColor, true, _talkButtonInfo, CommandMenuContainer);
    
    TalkButton.isVisible = true;
//End of Talk Button

var _ButtonSpacing = 50;

//Set Engage Mode Button
    var _EngageButtonColor = make_colour_rgb(150,50,50);
    var _EngageButtonPressedColor = make_colour_rgb(100,0,0);
    var _EngageButtonColorArray = scr_create_obj_array4_repeat(_EngageButtonColor);
    
    var _EngageButtonPositionArray = scr_create_obj_array4(-70,-20,70,20);
    
    var _fontColor = c_white;
    
    var _EngageButtonX = TalkButton.x;
    var _EngageButtonY = TalkButton.y+_ButtonSpacing;
    
    var _EngageButtonInfo = scr_ui_get_obj_ui_button_information(5,noone,"Enable Engage",fnt_default_medium,_fontColor,0.7,0.6);
    
    EngageButton = scr_ui_button_constructor(_EngageButtonX,_EngageButtonY, _EngageButtonPositionArray, _EngageButtonColorArray, 
    _EngageButtonPressedColor, true, _EngageButtonInfo, CommandMenuContainer);
    
    EngageButton.isVisible = true;
//End of Engage Mode Button

//Set Wander Mode Button
    var _WanderButtonColor = make_colour_rgb(50,50,150);
    var _WanderButtonPressedColor = make_colour_rgb(0,0,100);
    var _WanderButtonColorArray = scr_create_obj_array4_repeat(_WanderButtonColor);
    
    var _WanderButtonPositionArray = scr_create_obj_array4(-70,-20,70,20);
    
    var _fontColor = c_white;
    
    var _WanderButtonX = EngageButton.x;
    var _WanderButtonY = EngageButton.y+_ButtonSpacing;
    
    var _WanderButtonInfo = scr_ui_get_obj_ui_button_information(5,noone,"Enable Wander",fnt_default_medium,_fontColor,0.7,0.6);
    
    WanderButton = scr_ui_button_constructor(_WanderButtonX,_WanderButtonY, _WanderButtonPositionArray, _WanderButtonColorArray, 
    _WanderButtonPressedColor, true, _WanderButtonInfo, CommandMenuContainer);
    
    WanderButton.isVisible = true;
//End of Wander Mode Button


