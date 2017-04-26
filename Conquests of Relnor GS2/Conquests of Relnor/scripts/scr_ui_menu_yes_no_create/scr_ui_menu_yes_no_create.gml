///@param TitleText -2
///@param TextLinesLinkedList -1
///@param YesButtonText 0
///@param YesButtonScript 1
///@param YesButtonScriptAs 2
///@param YesButtonTempVal 3
///@param NoButtonText 4
///@param NoButtonScript 5
///@param NoButtonScriptAs 6
///@param NoButtonTempVal 7

var _titleText = argument0;
var _lines = argument1;
var _yesButtonText = argument2;
var _yesButtonScript = argument3;
var _yesButtonScriptAs = argument4;
var _yesButtonTempVal = argument5;
var _noButtonText = argument6;
var _noButtonScript = argument7;
var _noButtonScriptAs = argument8;
var _noButtonTempVal = argument9;

scr_ui_menus_hide_all();
scr_square_player_clear_clickable_squares(global.player.mapControl);

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
            
    var _font = scr_ui_font_constructor(_x,_y, _titleText, fnt_default_large, c_white, 1.0, fa_left, fa_middle, _menu);
    _font.isVisible = true;
//Text

var _currentX = _menu.leftX + 40;
var _currentY = _menu.topY + 120;
var _yOffset = 30;
var _totalLines = scr_linked_list_size(_lines);
for(var i = 0; i < _totalLines; i++){
	var _line = scr_linked_list_get_next(_lines);
            
    var _font = scr_ui_font_constructor(_currentX,_currentY, _line, fnt_default_medium, c_white, 1.0, fa_left, fa_middle, _menu);
    _font.isVisible = true;
	
	_currentY += _yOffset;
}
scr_linked_list_destroy(_lines);

//Start of Yes Button
	if(_yesButtonScript != noone){
		var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,150), "_buttonColorArray");
		var _buttonPressedColor = make_colour_rgb(0,0,100);
                
		var _buttonPosArray = scr_ui_menu_get_pos_array(100, 50);
                
		var _fontColor = c_white;
                
		var _buttonX = _menu.x - 60;
		var _buttonY = _menu.bottomY - 30;
                
		var _text = _yesButtonText;
                            
		var _buttonInfo = scr_ui_get_obj_ui_button_information(5, scr_ui_menu_yes_no_button_clicked, noone, 
			_text, fnt_default_small, _fontColor, 1.0, 0.8);
                
		var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
			_buttonColorArray, _buttonPressedColor, true, _buttonInfo, _menu);
                
		_button.isVisible = true;
		
		_button.tempVal[0] = _menu;
		_button.tempVal[1] = _yesButtonScript;
		_button.tempVal[2] = _yesButtonScriptAs;
		_button.tempVal[3] = _yesButtonTempVal;
				
		scr_destroy_instance(_buttonColorArray);
		scr_destroy_instance(_buttonPosArray);
		scr_destroy_instance(_buttonInfo);
	}
//End of Yes Button
	
//Start of No Button
	var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,150), "_buttonColorArray");
	var _buttonPressedColor = make_colour_rgb(0,0,100);
                
	var _buttonPosArray = scr_ui_menu_get_pos_array(100, 50);
                
	var _fontColor = c_white;
                
	var _buttonX = _menu.x + 60;
	var _buttonY = _menu.bottomY - 30;
                
	var _text = _noButtonText;
                            
	var _buttonInfo = scr_ui_get_obj_ui_button_information(5, scr_ui_menu_yes_no_button_clicked, noone, 
		_text, fnt_default_small, _fontColor, 1.0, 0.8);
                
	var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
		_buttonColorArray, _buttonPressedColor, true, _buttonInfo, _menu);
                
	_button.isVisible = true;
		
	_button.tempVal[0] = _menu;
	_button.tempVal[1] = _noButtonScript;
	_button.tempVal[2] = _noButtonScriptAs;
	_button.tempVal[3] = _noButtonTempVal;
				
	scr_destroy_instance(_buttonColorArray);
	scr_destroy_instance(_buttonPosArray);
	scr_destroy_instance(_buttonInfo);
//End of No Button

_menu.isVisible = true;