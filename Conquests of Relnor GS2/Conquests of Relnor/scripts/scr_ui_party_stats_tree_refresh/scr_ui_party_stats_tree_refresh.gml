
with(instance_find(obj_player,0)){

var _character = InventoryInfoContainerItemStats.character;

//PauseMenuInventoryContainer is the parent container
//PauseMenuStatsTreeContainer is the container

	while(!scr_linked_list_is_empty(PauseMenuStatsTreeObjects)){
		instance_destroy(scr_linked_list_remove_next(PauseMenuStatsTreeObjects));
	}

	
	//Stat Points Text
		var _textX = PauseMenuStatsTreeContainer.leftX + 10;
		var _textY = PauseMenuStatsTreeContainer.topY + 50;
		var _text = "Stat Points: "+string(_character.statPoints);

		var _fontText = scr_ui_font_constructor(_textX, _textY, _text, fnt_default_medium_large, c_white, 1, fa_left, fa_center, PauseMenuStatsTreeContainer);
		scr_linked_list_add(PauseMenuStatsTreeObjects, _fontText);
		_fontText.isVisible = true;
	//Stat Points Text

	if(!_character.isPlayer){
		//Auto Button
		    var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,150), "_buttonColorArray");
		    var _buttonPressedColor = make_colour_rgb(0,0,100);
    
		    var _buttonPosArray = scr_create_obj_array4_ui(200, 30);
    
		    var _fontColor = c_white;
    
		    var _buttonX = PauseMenuStatsTreeContainer.rightX - 170;
		    var _buttonY = PauseMenuStatsTreeContainer.topY + 50;
		
			var _text = _character.autoLevel ? "Disable Auto Level" : "Enable Auto Level";
    
		    var _buttonInfo = scr_ui_get_obj_ui_button_information(5, scr_ui_buttons_stat_tree_auto_clicked, _character, 
		    _text, fnt_default_medium, _fontColor, 1.0, 0.8);
    
		    var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
		    _buttonColorArray, _buttonPressedColor, true, _buttonInfo, PauseMenuStatsTreeContainer);
    
		    _button.isVisible = true;
    
		    scr_destroy_instance(_buttonColorArray);
		    scr_destroy_instance(_buttonPosArray);
		    scr_destroy_instance(_buttonInfo);
		
			scr_linked_list_add(PauseMenuStatsTreeObjects, _button);
		//Auto Button
	}
	
	var _startingOffsetX = 220;
	var _startingOffsetY = 100;
	var _buttonOffsetY = 40;

	for(var j = 0; j < STATS_MAX; j++){

		//Container
		    var _menuColor = make_colour_rgb(100,100,150);
		    var _menuColorArray = scr_create_obj_array4_repeat(_menuColor, "_menuColorArray");
    
			var _totalStats = scr_lifeform_get_stats_max(j);
    
			var _width = 200;
			var _height = _buttonOffsetY*_totalStats + 100;
	
		    var _menuPosArray = scr_create_obj_array4_ui(_width, _height);
	
		    var _menuX = PauseMenuStatsTreeContainer.leftX + _startingOffsetX + (_width+20)*j;
		    var _menuY = PauseMenuStatsTreeContainer.topY + _startingOffsetY + _height/2;
    
		    var _container = scr_ui_menu_create_container(_menuX, _menuY, _menuPosArray, _menuColorArray, true, 0.9, noone);
    
		    scr_destroy_instance(_menuColorArray);
		    scr_destroy_instance(_menuPosArray);
	
			scr_ui_menu_container_add_draw_object(_container, PauseMenuStatsTreeContainer);
			_container.isVisible = true;
			scr_linked_list_add(PauseMenuStatsTreeObjects, _container);
	
			//Text
				var _textX = _container.leftX + 10;
				var _textY = _container.topY + 30;
				var _text = scr_lifeform_get_stat_name(j, noone);

				var _fontText = scr_ui_font_constructor(_textX, _textY, _text, fnt_default_medium_large, c_white, 1, fa_left, fa_center, _container);
				scr_linked_list_add(PauseMenuStatsTreeObjects, _fontText);
				_fontText.isVisible = true;
			//Text
	
			//Buttons
				var _currentX = _container.leftX + 90;
				var _currentY = _fontText.y + _buttonOffsetY;
				for(var i = 0; i < _totalStats; i++){
					var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,150), "_buttonColorArray");
				    var _buttonPressedColor = make_colour_rgb(0,0,100);
    
				    var _buttonPosArray = scr_create_obj_array4_ui(100, 30);
    
				    var _fontColor = c_white;
		
					var _text = scr_lifeform_get_stat_name(j, i) + (_character.statPoints > 0 && !_character.autoLevel ? " (+)" : "");
    
				    var _buttonX = _currentX;
				    var _buttonY = _currentY;
					
					var _script = _character.statPoints > 0 && !_character.autoLevel ? scr_ui_buttons_stat_tree_stat_clicked : noone;
    
				    var _buttonInfo = scr_ui_get_obj_ui_button_information(5, _script, self, 
						_text, fnt_default_medium, _fontColor, 1.0, 0.8);
    
				    var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
						_buttonColorArray, _buttonPressedColor, true, _buttonInfo, _container);
    
				    _button.isVisible = true;
    
				    scr_destroy_instance(_buttonColorArray);
				    scr_destroy_instance(_buttonPosArray);
				    scr_destroy_instance(_buttonInfo);
		
					_button.tempVal[0] = _character;
					_button.tempVal[1] = j;
					_button.tempVal[2] = i;
			
					_currentY += _buttonOffsetY;
				}
			//Buttons
	
		//End of Container

	}


}