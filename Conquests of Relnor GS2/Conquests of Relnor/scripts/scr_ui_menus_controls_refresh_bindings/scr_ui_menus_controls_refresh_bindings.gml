scr_linked_list_destroy_all(ControlMenuButtons);

ControlMenuButtons = scr_linked_list_create();
	

var _yOffset = 40;
var _currentY = ControlMenuContainer.topY + 60;

var _buttonWidth = 120;
var _padding = _buttonWidth/2 + 10;

//Input Type
	var _descriptionText = "Input Type: ";
	_descriptionText += triggersInput == TRIGGER_INPUT_TYPE_CONTROLLER ? "Controller" : "Keyboard";
    
	var _textDraw = scr_ui_font_constructor(ControlMenuContainer.leftX + _padding, ControlMenuContainer.topY + _padding, 
		_descriptionText, fnt_default_medium, c_white, 
	    1.0, fa_left, fa_middle, ControlMenuContainer);
	_textDraw.isVisible = true;
	scr_linked_list_add(ControlMenuButtons, _textDraw);
//Input Type

for(var i = 0; i < TRIGGERS_MAX; i++){
	
	//Primary Button Binding
		var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,150), "_buttonColorArray");
	    var _buttonPressedColor = make_colour_rgb(0,0,100);
    
	    var _buttonPosArray = scr_create_obj_array4_ui(_buttonWidth, 20);
    
	    var _fontColor = c_white;
    
	    var _buttonX = ControlMenuContainer.leftX + 400;
	    var _buttonY = _currentY;
		
		var _buttonText = triggersInputType[i] == TRIGGER_INPUT_TYPE_KEYBOARD ?
		 scr_player_controls_get_binding_name(triggersBinding[i]) :
		 scr_player_controls_get_gamepad_binding_name(triggersBinding[i]);
    
	    var _buttonInfo = scr_ui_get_obj_ui_button_information(5, scr_ui_menus_controls_set_primary_binding_clicked, noone, 
			_buttonText, fnt_default_medium, _fontColor, 1.0, 0.8);
    
	    var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
			_buttonColorArray, _buttonPressedColor, true, _buttonInfo, ControlMenuContainer);
			
		_button.tempVal = i;
    
	    _button.isVisible = true;
    
	    scr_destroy_instance(_buttonColorArray);
	    scr_destroy_instance(_buttonPosArray);
	    scr_destroy_instance(_buttonInfo);
		scr_linked_list_add(ControlMenuButtons, _button);
	//Primary Button Binding
	
	//Description of control
		var _descriptionText = scr_player_controls_get_description(i);
		
		var _x = _button.x - _padding;
    
	    var _textDraw = scr_ui_font_constructor(_x, _currentY, _descriptionText, fnt_default_medium, c_white, 
	            1.0, fa_right, fa_middle, ControlMenuContainer);
	    _textDraw.isVisible = true;
		scr_linked_list_add(ControlMenuButtons, _textDraw);
	//Description of control
	
	//Plus sign between buttons
		var _descriptionText = "+";
    
	    var _textDraw = scr_ui_font_constructor(_button.x + _padding, _currentY + 5, _descriptionText, fnt_default_medium, c_white, 
	            1.0, fa_center, fa_middle, ControlMenuContainer);
	    _textDraw.isVisible = true;
		scr_linked_list_add(ControlMenuButtons, _textDraw);
	//Plus sign between buttons
	
	//Extra Button Binding
		var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,150), "_buttonColorArray");
	    var _buttonPressedColor = make_colour_rgb(0,0,100);
    
	    var _buttonPosArray = scr_create_obj_array4_ui(_buttonWidth, 20);
    
	    var _fontColor = c_white;
    
	    var _buttonX = _textDraw.x + _padding;
	    var _buttonY = _currentY;
		
		var _buttonText = triggersExtraBindingInputType[i] == TRIGGER_INPUT_TYPE_KEYBOARD ?
		 scr_player_controls_get_binding_name(triggersExtraBinding[i]) :
		 scr_player_controls_get_gamepad_binding_name(triggersExtraBinding[i]);
    
	    var _buttonInfo = scr_ui_get_obj_ui_button_information(5, scr_ui_menus_controls_set_extra_binding_clicked, noone, 
			_buttonText, fnt_default_medium, _fontColor, 1.0, 0.8);
    
	    var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
			_buttonColorArray, _buttonPressedColor, true, _buttonInfo, ControlMenuContainer);
			
		_button.tempVal = i;
    
	    _button.isVisible = true;
    
	    scr_destroy_instance(_buttonColorArray);
	    scr_destroy_instance(_buttonPosArray);
	    scr_destroy_instance(_buttonInfo);
		scr_linked_list_add(ControlMenuButtons, _button);
	//Extra Button Binding
	
	_currentY += _yOffset;
}