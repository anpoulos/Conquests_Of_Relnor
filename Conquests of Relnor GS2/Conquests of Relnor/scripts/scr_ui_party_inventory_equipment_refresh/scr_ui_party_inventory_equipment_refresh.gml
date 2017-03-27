///@param hideItemInfo

var _player = instance_find(obj_player, 0);

with(_player){

	if(argument0){
		InventoryInfoContainer.isVisible = false;
		ItemInfoDrawObject.item = noone;
	}

	var _selectedCharacter = InventoryInfoContainerItemStats.player;

	while(!scr_linked_list_is_empty(PauseMenuInventoryButtons)){
		instance_destroy(scr_linked_list_remove_next(PauseMenuInventoryButtons));
	}

	var _width = InventoryCenterLine.x1 - PauseMenuInventoryContainer.leftX - 100;
	var _currentX = (InventoryCenterLine.x1 + PauseMenuInventoryContainer.leftX)/2 - 50;
	var _currentY = PauseMenuInventoryContainer.topY + 75;
	var _yOffset = 40;

	for(var i = 0; i < INVENTORY_MAX; i++){
		var _item = _selectedCharacter.inventory[i];
	
		if(_item != noone){
	
			//inventory item name
				var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(0,0,100), "_buttonColorArray");
			    var _buttonPressedColor = make_colour_rgb(0,0,100);
           
			    var _buttonPosArray = scr_create_obj_array4_ui(_width, 35);
                
			    var _fontColor = c_white;
                
			    var _buttonX = _currentX;
			    var _buttonY = _currentY;
                
			    var _text = _item.itemStats[ITEM_STATS_NAME];
                            
			    var _buttonInfo = scr_ui_get_obj_ui_button_information(5, scr_ui_party_inventory_row_clicked, noone, 
					_text, fnt_default_medium, _fontColor, 1.0, 0.5);
                
			    var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
					_buttonColorArray, _buttonPressedColor, false, _buttonInfo, PauseMenuInventoryContainer);
				
				_button.tempVal = _item;
				
				_button.isVisible = true;
                
			    scr_destroy_instance(_buttonColorArray);
			    scr_destroy_instance(_buttonPosArray);
			    scr_destroy_instance(_buttonInfo);
		
				scr_linked_list_add(PauseMenuInventoryButtons, _button);
			//end of inventory item name
		
			//inventory item icon
				var _iconX = _button.leftX + 15;
				var _iconY = _button.y;
				var _icon = scr_ui_draw_sprite_constructor(_iconX, _iconY, _item.icon, 0, PauseMenuInventoryContainer);
				_icon.isVisible = true;
				scr_linked_list_add(PauseMenuInventoryButtons, _icon);
			//end of inventory icon
		
			//item use button
				var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(0,0,100), "_buttonColorArray");
			    var _buttonPressedColor = make_colour_rgb(0,0,50);
           
			    var _buttonPosArray = scr_create_obj_array4_ui(40, 34);
                
			    var _fontColor = c_white;
                
			    var _buttonX = _button.rightX + 25;
			    var _buttonY = _currentY;
                
			    var _text = scr_item_get_use_type(_item.itemStats[ITEM_STATS_TYPE]);
                            
			    var _buttonInfo = scr_ui_get_obj_ui_button_information(5, _item.useScript, _item, 
					_text, fnt_default_medium, _fontColor, 1.0, 0.5);
                
			    var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
					_buttonColorArray, _buttonPressedColor, true, _buttonInfo, PauseMenuInventoryContainer);
				
				_button.isVisible = true;
                
			    scr_destroy_instance(_buttonColorArray);
			    scr_destroy_instance(_buttonPosArray);
			    scr_destroy_instance(_buttonInfo);
		
				scr_linked_list_add(PauseMenuInventoryButtons, _button);
			//end of item use button
		
			//item drop button
				var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(0,0,100), "_buttonColorArray");
			    var _buttonPressedColor = make_colour_rgb(0,0,50);
           
			    var _buttonPosArray = scr_create_obj_array4_ui(40, 34);
                
			    var _fontColor = c_white;
                
			    var _buttonX = _button.rightX + 25;
			    var _buttonY = _currentY;
                
			    var _text = "Drop";
                            
			    var _buttonInfo = scr_ui_get_obj_ui_button_information(5, _item.dropScript, _item, 
					_text, fnt_default_medium, _fontColor, 1.0, 0.5);
                
			    var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
					_buttonColorArray, _buttonPressedColor, true, _buttonInfo, PauseMenuInventoryContainer);
				
				_button.isVisible = true;
                
			    scr_destroy_instance(_buttonColorArray);
			    scr_destroy_instance(_buttonPosArray);
			    scr_destroy_instance(_buttonInfo);
		
				scr_linked_list_add(PauseMenuInventoryButtons, _button);
			//end of item drop button
		
			_currentY += _yOffset;
		}
	}

	var _width = InventoryRightLine.x1 - InventoryCenterLine.x1 - 80;
	var _currentX = (InventoryCenterLine.x1 + InventoryRightLine.x1)/2 - 40;
	var _currentY = PauseMenuInventoryContainer.topY + 75;
	var _yOffset = 40;

	for(var i = 0; i < EQUIPMENT_TYPE_MAX; i++){
		var _item = _selectedCharacter.equipment[i];
	
		if(_item != noone){
	
			//equipment item name
				var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(0,0,100), "_buttonColorArray");
			    var _buttonPressedColor = make_colour_rgb(0,0,100);
           
			    var _buttonPosArray = scr_create_obj_array4_ui(_width, 35);
                
			    var _fontColor = c_white;
                
			    var _buttonX = _currentX;
			    var _buttonY = _currentY;
                
			    var _text = _item.itemStats[ITEM_STATS_NAME];
                            
			    var _buttonInfo = scr_ui_get_obj_ui_button_information(5, scr_ui_party_inventory_row_clicked, noone, 
					_text, fnt_default_medium, _fontColor, 1.0, 0.5);
                
			    var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
					_buttonColorArray, _buttonPressedColor, false, _buttonInfo, PauseMenuInventoryContainer);
				
				_button.tempVal = _item;
				
				_button.isVisible = true;
                
			    scr_destroy_instance(_buttonColorArray);
			    scr_destroy_instance(_buttonPosArray);
			    scr_destroy_instance(_buttonInfo);
		
				scr_linked_list_add(PauseMenuInventoryButtons, _button);
			//end of equipment item name
		
			//equipment item icon
				var _iconX = _button.leftX + 15;
				var _iconY = _button.y;
				var _icon = scr_ui_draw_sprite_constructor(_iconX, _iconY, _item.icon, 0, PauseMenuInventoryContainer);
				_icon.isVisible = true;
				scr_linked_list_add(PauseMenuInventoryButtons, _icon);
			//end of equipment icon
		
			//item unequip button
				var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(0,0,100), "_buttonColorArray");
			    var _buttonPressedColor = make_colour_rgb(0,0,50);
           
			    var _buttonPosArray = scr_create_obj_array4_ui(60, 34);
                
			    var _fontColor = c_white;
                
			    var _buttonX = _button.rightX + 35;
			    var _buttonY = _currentY;
                
			    var _text = "Unequip";
                            
			    var _buttonInfo = scr_ui_get_obj_ui_button_information(5, _item.unequipScript, _item, 
					_text, fnt_default_medium, _fontColor, 1.0, 0.5);
                
			    var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
					_buttonColorArray, _buttonPressedColor, true, _buttonInfo, PauseMenuInventoryContainer);
				
				_button.isVisible = true;
                
			    scr_destroy_instance(_buttonColorArray);
			    scr_destroy_instance(_buttonPosArray);
			    scr_destroy_instance(_buttonInfo);
		
				scr_linked_list_add(PauseMenuInventoryButtons, _button);
			//end of item unequip button
		
			_currentY += _yOffset;
		}
	}





}