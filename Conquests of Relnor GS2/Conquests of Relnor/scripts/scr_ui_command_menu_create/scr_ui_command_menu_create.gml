
global.gamePaused = true;

//Menu Container
    var _menuColor = make_colour_rgb(50,50,50);
    var _menuColorArray = scr_create_obj_array4_repeat(_menuColor, "_menuColorArray");
    
    var _halfWidth = display_get_gui_width()/2;
    var _halfHeight = display_get_gui_height()/2;
	
	var _padding = 300;
    
	var _menuPosArray = scr_create_obj_array4_ui(display_get_gui_width() - _padding, display_get_gui_height() - _padding);
	
    var _menuX = _halfWidth;
    var _menuY = _halfHeight;
    
    menuContainer = scr_ui_menu_create_container(_menuX, _menuY, _menuPosArray, _menuColorArray, true, 0.2, noone);
    
    scr_destroy_instance(_menuColorArray);
    scr_destroy_instance(_menuPosArray);
	
	menuContainer.isVisible = true;
//End of Menu Container

var _buttonAlpha = 0.3;

//Start of Close Button
	var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,50), "_buttonColorArray");
	var _buttonPressedColor = make_colour_rgb(25,25,25);
                
	var _buttonPosArray = scr_create_obj_array4_ui(40, 40);
                
	var _fontColor = c_white;
                
	var _buttonX = menuContainer.rightX - 30;
	var _buttonY = menuContainer.topY + 30;
                
	var _text = "X";
                            
	var _buttonInfo = scr_ui_get_obj_ui_button_information(5, scr_ui_command_menu_close, self, 
		_text, fnt_default_medium, _fontColor, 1.0, _buttonAlpha);
                
	var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
		_buttonColorArray, _buttonPressedColor, true, _buttonInfo, menuContainer);
			
	_button.isVisible = true;
				
	scr_destroy_instance(_buttonColorArray);
	scr_destroy_instance(_buttonPosArray);
	scr_destroy_instance(_buttonInfo);
//End of Close Button

var _buttonWidth = 200;
var _buttonHeight = 50;

var _xOffset = _buttonWidth + 10;
var _yOffset = _buttonHeight + 10;
var _currentX = menuContainer.leftX + _xOffset + 10;
var _currentY = menuContainer.topY + 200;
var _originalY = _currentY;
var _currentCommand = 0;

var _totalColumnsEven = round(COMMAND_MAX/4);

for(var i = 0; i < _totalColumnsEven - 1; i++){
	for(var j = 0; j < 4; j++){
		//Start of Use Button
			var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,50), "_buttonColorArray");
			var _buttonPressedColor = make_colour_rgb(25,25,25);
                
		    var _buttonPosArray = scr_create_obj_array4_ui(_buttonWidth, _buttonHeight);
                
		    var _fontColor = c_white;
                
		    var _buttonX = _currentX;
		    var _buttonY = _currentY;
                
		    var _text = scr_player_commands_get_name(_currentCommand);
                            
		    var _buttonInfo = scr_ui_get_obj_ui_button_information(5, scr_ui_command_menu_command_clicked, global.player, 
				_text, fnt_default_medium, _fontColor, 1.0, _buttonAlpha);
                
		    var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
				_buttonColorArray, _buttonPressedColor, true, _buttonInfo, menuContainer);
            
			_button.tempVal = _currentCommand;
			
			_button.isVisible = true;
				
		    scr_destroy_instance(_buttonColorArray);
		    scr_destroy_instance(_buttonPosArray);
		    scr_destroy_instance(_buttonInfo);
		//End of Use Button
		_currentY += _yOffset;
		_currentCommand += 1;
	}
	_currentY = _originalY;
	_currentX += _xOffset;
}

_currentY = _originalY;

for(var i = _currentCommand; i < COMMAND_MAX; i++){
	//Start of Use Button
		var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,50), "_buttonColorArray");
		var _buttonPressedColor = make_colour_rgb(25,25,25);
                
		var _buttonPosArray = scr_create_obj_array4_ui(_buttonWidth, _buttonHeight);
                
		var _fontColor = c_white;
                
		var _buttonX = _currentX;
		var _buttonY = _currentY;
                
		var _text = scr_player_commands_get_name(_currentCommand);
                            
		var _buttonInfo = scr_ui_get_obj_ui_button_information(5, scr_ui_command_menu_command_clicked, global.player, 
			_text, fnt_default_medium, _fontColor, 1.0, _buttonAlpha);
                
		var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
			_buttonColorArray, _buttonPressedColor, true, _buttonInfo, menuContainer);
            
		_button.tempVal = _currentCommand;
                
		_button.isVisible = true;
				
		scr_destroy_instance(_buttonColorArray);
		scr_destroy_instance(_buttonPosArray);
		scr_destroy_instance(_buttonInfo);
	//End of Use Button
	_currentY += _yOffset;
	_currentCommand += 1;
}