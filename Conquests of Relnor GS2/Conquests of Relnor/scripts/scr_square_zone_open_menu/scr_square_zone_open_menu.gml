///@param obj_square_zone

scr_ui_menus_hide_all();

with(argument0){
	var _menuColor = make_colour_rgb(100,100,150);
	var _menuColorArray = scr_create_obj_array4_repeat(_menuColor, "_menuColorArray");
            
	var _width = round(display_get_gui_width()/2);
	var _height = round(display_get_gui_height()/2);
        
	var _menuPosArray = scr_ui_menu_get_pos_array(_width, _height);
    
	var _menuX = round(display_get_gui_width()/2);
	var _menuY = round(display_get_gui_height()/2);
       
	var _menu = scr_ui_menu_create_container(_menuX, _menuY, _menuPosArray, _menuColorArray, false, 0.9, noone);
        
	scr_destroy_instance(_menuColorArray);
	scr_destroy_instance(_menuPosArray);      		

	//Text
        var _x = _menu.x; 
        var _y = _menu.topY + 60;
        var _text = "Travel Into "+destinationName+"?";
            
        var _font = scr_ui_font_constructor(_x,_y, _text, fnt_default_large, c_white, 1.0, fa_left, fa_middle, _menu);
        _font.isVisible = true;
	//Text

	//Start of Button
	    var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,150), "_buttonColorArray");
	    var _buttonPressedColor = make_colour_rgb(0,0,100);
                
	    var _buttonPosArray = scr_ui_menu_get_pos_array(100, 50);
                
	    var _fontColor = c_white;
                
	    var _buttonX = _menu.x - 60;
	    var _buttonY = _menu.bottomY - 30;
                
	    var _text = "Yes";
                            
	    var _buttonInfo = scr_ui_get_obj_ui_button_information(5, scr_square_zone_yes_clicked, self, 
			_text, fnt_default_small, _fontColor, 1.0, 0.8);
                
	    var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
			_buttonColorArray, _buttonPressedColor, true, _buttonInfo, _menu);
                
		_button.isVisible = true;
		
		_button.tempVal = _menu;
				
	    scr_destroy_instance(_buttonColorArray);
	    scr_destroy_instance(_buttonPosArray);
	    scr_destroy_instance(_buttonInfo);
	//End of Button
	
	//Start of Button
	    var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,150), "_buttonColorArray");
	    var _buttonPressedColor = make_colour_rgb(0,0,100);
                
	    var _buttonPosArray = scr_ui_menu_get_pos_array(100, 50);
                
	    var _fontColor = c_white;
                
	    var _buttonX = _menu.x + 60;
	    var _buttonY = _menu.bottomY - 30;
                
	    var _text = "No";
                            
	    var _buttonInfo = scr_ui_get_obj_ui_button_information(5, scr_square_zone_no_clicked, self, 
			_text, fnt_default_small, _fontColor, 1.0, 0.8);
                
	    var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
			_buttonColorArray, _buttonPressedColor, true, _buttonInfo, _menu);
                
		_button.isVisible = true;
		
		_button.tempVal = _menu;
				
	    scr_destroy_instance(_buttonColorArray);
	    scr_destroy_instance(_buttonPosArray);
	    scr_destroy_instance(_buttonInfo);
	//End of Button

	_menu.isVisible = true;
}