///scr_player_gui_create_passive_menu

//create bottom left passive menu container
var _passiveMenuColor = make_colour_rgb(100,100,150); //grey shade of light blue
var _passiveMenuColorArray = scr_create_obj_array4_repeat(_passiveMenuColor);
var _passiveMenuPosArray = scr_create_obj_array4(-80,-100,80,100);
var _passiveMenuX = _passiveMenuPosArray.item[2]+10;
var _passiveMenuY = display_get_gui_height()-_passiveMenuPosArray.item[3]-10;

PassiveMenuContainer = scr_ui_menu_create_container(_passiveMenuX, _passiveMenuY, 
_passiveMenuPosArray, _passiveMenuColorArray, true, 0.5, noone);
//end of passive menu

//Talk Button
    var _talkButtonColor = make_colour_rgb(50,50,150);
    var _talkButtonPressedColor = make_colour_rgb(0,0,100);
    var _talkButtonColorArray = scr_create_obj_array4_repeat(_talkButtonColor);
    
    var _talkButtonPositionArray = scr_create_obj_array4(-70,-20,70,20);
    
    var _fontColor = c_white;
    
    var _talkButtonX = PassiveMenuContainer.x;
    var _talkButtonY = PassiveMenuContainer.y-30;
    
    var _talkButtonInfo = scr_ui_get_obj_ui_button_information(5,scr_player_commands_talk_to_closest_selected,self,"Talk To",fnt_default_medium,_fontColor,0.7,0.6);
    
    TalkButton = scr_ui_button_constructor(_talkButtonX,_talkButtonY, _talkButtonPositionArray, _talkButtonColorArray, 
    _talkButtonPressedColor, true, _talkButtonInfo, PassiveMenuContainer);
    
    TalkButton.isVisible = true;
//End of Talk Button


