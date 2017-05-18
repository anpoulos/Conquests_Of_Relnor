
///@param isFirstTimeBeingOpened

SettingsUIObjects = scr_linked_list_create();

if(argument0){
	//Menu Container
	    var _menuColor = make_colour_rgb(100,100,150);
	    var _menuColorArray = scr_create_obj_array4_repeat(_menuColor, "_menuColorArray");
    
	    var _halfWidth = display_get_gui_width()/2;
	    var _halfHeight = display_get_gui_height()/2;
	
		var _menuPosArray = scr_create_obj_array4_ui(round(display_get_gui_width() - 100), round(display_get_gui_height() - 100));
	
	    var _menuX = _halfWidth;
	    var _menuY = _halfHeight;
    
	    SettingsMenuContainer = scr_ui_menu_create_container(_menuX, _menuY, _menuPosArray, _menuColorArray, true, 0.9, noone);
    
	    scr_destroy_instance(_menuColorArray);
	    scr_destroy_instance(_menuPosArray);
	
		scr_linked_list_add(SettingsUIObjects, SettingsMenuContainer);
		
		SettingsMenuContainer.isVisible = true;
	//End of Menu Container
}

//Start of Close Button
    var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,150), "_buttonColorArray");
    var _buttonPressedColor = make_colour_rgb(0,0,100);
                
    var _buttonPosArray = scr_create_obj_array4_ui(50, 50);
                
    var _fontColor = c_white;
                
    var _buttonX = SettingsMenuContainer.rightX - 60;
    var _buttonY = SettingsMenuContainer.topY + 60;
                
    var _text = "X";
                            
    var _buttonInfo = scr_ui_get_obj_ui_button_information(5, scr_ui_settings_menu_close, self, 
    _text, fnt_default_large, _fontColor, 1.0, 0.8);
                
    var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
    _buttonColorArray, _buttonPressedColor, true, _buttonInfo, SettingsMenuContainer);
                
	_button.isVisible = true;
				
    scr_destroy_instance(_buttonColorArray);
    scr_destroy_instance(_buttonPosArray);
    scr_destroy_instance(_buttonInfo);
				
	scr_linked_list_add(SettingsUIObjects, _button);
//End of Close Button

//Settings Text
    var _x = SettingsMenuContainer.leftX + 50; 
    var _y = SettingsMenuContainer.topY + 30;
    var _text = "Settings";
            
    var _font = scr_ui_font_constructor(_x,_y, _text, fnt_default_large, c_white, 1.0, fa_left, fa_middle, SettingsMenuContainer);
    _font.isVisible = true;
	
	scr_linked_list_add(SettingsUIObjects, _font);
//Settings Text

var _currentY = _font.y + 100;
var _currentX = SettingsMenuContainer.leftX + 100;
var _yOffset = 75;

for(var i = 0; i < SETTINGS_MAX; i++){
	
	//Text
		var _textX = _currentX;
		var _textY = _currentY;
		var _text = scr_settings_get_name(i) + " : ";
		var _font = scr_ui_font_constructor(_textX,_textY, _text, fnt_default_medium, c_white, 1.0, fa_left, fa_middle, SettingsMenuContainer);
	    _font.isVisible = true;
	
		scr_linked_list_add(SettingsUIObjects, _font);
	//Text
	
	//Down Button
		if(global.mapControl.settings[i] != scr_settings_get_min(i)){
			//Start of Down Button
                var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,150), "_buttonColorArray");
                var _buttonPressedColor = make_colour_rgb(0,0,100);
                
                var _buttonPosArray = scr_create_obj_array4_ui(20, 20);
                
                var _fontColor = c_white;
                
                var _buttonX = _font.x + 200;
                var _buttonY = _font.y;
                
                var _text = "-";
                            
                var _buttonInfo = scr_ui_get_obj_ui_button_information(5, scr_ui_settings_adjust_button_clicked, self, 
                _text, fnt_default_medium, _fontColor, 1.0, 0.8);
                
                var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
                _buttonColorArray, _buttonPressedColor, true, _buttonInfo, SettingsMenuContainer);
                
				_button.isVisible = true;
				
				_button.tempVal[0] = i;
				_button.tempVal[1] = SETTINGS_DOWN;
				
                scr_destroy_instance(_buttonColorArray);
                scr_destroy_instance(_buttonPosArray);
                scr_destroy_instance(_buttonInfo);
				
				scr_linked_list_add(SettingsUIObjects, _button);
            //End of Down Button
		}
	//Down Button
	
	//Value Text
		var _textX = _font.x + 240;
		var _textY = _font.y;
		var _text = scr_settings_get_text_value(i);
		var _font = scr_ui_font_constructor(_textX,_textY, _text, fnt_default_medium, c_white, 1.0, fa_center, fa_middle, SettingsMenuContainer);
	    _font.isVisible = true;
	
		scr_linked_list_add(SettingsUIObjects, _font);
	//Value Text
	
	//Up Button
		if(global.mapControl.settings[i] != scr_settings_get_max(i)){
			//Start of Down Button
                var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,150), "_buttonColorArray");
                var _buttonPressedColor = make_colour_rgb(0,0,100);
                
                var _buttonPosArray = scr_create_obj_array4_ui(20, 20);
                
                var _fontColor = c_white;
                
                var _buttonX = _font.x + 40;
                var _buttonY = _font.y;
                
                var _text = "+";
                            
                var _buttonInfo = scr_ui_get_obj_ui_button_information(5, scr_ui_settings_adjust_button_clicked, self, 
                _text, fnt_default_medium, _fontColor, 1.0, 0.8);
                
                var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
                _buttonColorArray, _buttonPressedColor, true, _buttonInfo, SettingsMenuContainer);
                
				_button.isVisible = true;
				
				_button.tempVal[0] = i;
				_button.tempVal[1] = SETTINGS_UP;
				
                scr_destroy_instance(_buttonColorArray);
                scr_destroy_instance(_buttonPosArray);
                scr_destroy_instance(_buttonInfo);
				
				scr_linked_list_add(SettingsUIObjects, _button);
            //End of Down Button
		}
	//Up Button
	
	_currentY += _yOffset;
}
