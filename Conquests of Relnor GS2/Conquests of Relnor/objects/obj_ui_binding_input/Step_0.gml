/// @description Insert description here
// You can write your code in this editor

if(button != noone){

	if(cancelBindingButton == noone){
		var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(150,50,50), "_buttonColorArray");
	    var _buttonPressedColor = make_colour_rgb(100,0,0);
    
	    var _buttonPosArray = scr_create_obj_array4_ui(120, 20);
    
	    var _fontColor = c_white;
    
	    var _buttonX = button.x;
	    var _buttonY = menuContainer.topY + 20;
		
		var _buttonText = "Clear Binding";
    
		var _script = isExtraBinding ? scr_ui_menus_controls_clear_extra_binding : scr_ui_menus_controls_clear_primary_binding;
	
	    var _buttonInfo = scr_ui_get_obj_ui_button_information(5, _script, noone, 
			_buttonText, fnt_default_medium, _fontColor, 1.0, 0.8);
    
	    cancelBindingButton = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
			_buttonColorArray, _buttonPressedColor, true, _buttonInfo, menuContainer);
			
		cancelBindingButton.tempVal = bindingIndex;
    
	    cancelBindingButton.isVisible = true;
    
	    scr_destroy_instance(_buttonColorArray);
	    scr_destroy_instance(_buttonPosArray);
	    scr_destroy_instance(_buttonInfo);
	}

	if(flashCounter > 0){
		flashCounter -= 1;
	}
	if(flashCounter == 0){
		if(button.pressed){
			button.pressed = false;
		}
		else{
			button.pressed = true;
		}
		flashCounter = room_speed div 4;
	}
	
	if(keyboard_key != 0){
		
		var _validBindingsList = global.mapControl.validBindings;
		var _totalValidBindings = scr_linked_list_size(_validBindingsList);
		
		for(var i = 0; i < _totalValidBindings; i++){
			if(scr_linked_list_exists(_validBindingsList, keyboard_key)){
			
				scr_player_controls_set_binding(keyboard_key, bindingIndex, TRIGGER_INPUT_TYPE_KEYBOARD, isExtraBinding, noone);
						
				with(global.player){
					scr_ui_menus_controls_refresh_bindings();
					if(triggersInput == TRIGGER_INPUT_TYPE_CONTROLLER){
						scr_ui_virtual_mouse_create(VIRTUAL_MOUSE_MODE_MOUSE, true);
					}
				}
				
				instance_destroy();
				
				return;
			}
		}
		
	}
	
	var _validGamePadBindingsList = global.mapControl.validGamePadButtons;
	var _totalValidGamePadBindings = scr_linked_list_size(_validGamePadBindingsList);
	
	for(var i = 0; i < 4; i++){
		if(gamepad_is_connected(i)){
			for(var j = 0; j < _totalValidGamePadBindings; j++){
				var _gamePadButton = scr_linked_list_get_next(_validGamePadBindingsList);
				if(gamepad_button_check(i, _gamePadButton)){
					scr_player_controls_set_binding(_gamePadButton, bindingIndex, TRIGGER_INPUT_TYPE_CONTROLLER, isExtraBinding, i);
					
						
					with(global.player){	
						scr_ui_menus_controls_refresh_bindings();				
						if(triggersInput == TRIGGER_INPUT_TYPE_KEYBOARD){
							scr_ui_virtual_mouse_cleanup_from_player();
						}
					}
				
					instance_destroy();
				
					return;
				}
			}
		}
		
	}	
	
}