///@param obj_chat

var _chat = argument0;

//Create Chat Container
    var _menuColorArray = scr_create_obj_array4_repeat(make_colour_rgb(150,150,150), "_menuColorArray");
    var _menuPosArray = scr_create_obj_array4(-300, -75, 300, 75, "_menuPosArray");
    
    var _menuX = display_get_gui_width()/2;
    var _menuY = _menuPosArray.item[3]+10;
    
    _chat.ChatContainer = scr_ui_menu_create_container(_menuX, _menuY, _menuPosArray, _menuColorArray, true, 0.5, noone);
    
    scr_destroy_instance(_menuColorArray);
    scr_destroy_instance(_menuPosArray);    
//End Create Chat Container

//Create name text
	var _textX = _chat.ChatContainer.leftX + 20;
	var _textY = _chat.ChatContainer.topY + 20;

	_chat.NameText = scr_ui_font_constructor(_textX, _textY, "", fnt_default_large, c_white, 
	        1.0, fa_left, fa_middle, _chat.ChatContainer);
	_chat.NameText.isVisible = true;
//End create name text
