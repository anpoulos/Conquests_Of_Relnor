///@param obj_ui_vault

with(argument0){
	if(vault == noone){
		return true;
	}

	while(!scr_linked_list_is_empty(uiObjects)){
		instance_destroy(scr_linked_list_remove_next(uiObjects));
	}

	//Vault name text
        var _x = VaultContainer.leftX + 10; 
        var _y = VaultContainer.topY - 20;
        var _text = vault.name;
            
        var _font = scr_ui_font_constructor(_x,_y, _text, fnt_default_large, c_white, 1.0, fa_left, fa_middle, MenuContainer);
        _font.isVisible = true;
	//Vault name text

	var _yOffset = 50;
	var _currentY = VaultContainer.topY + _yOffset;

	for(var i = 0; i < VAULT_MAX; i++){
		var _item = vault.items[i];
		if(_item != noone){
			// Item Button Borderless
				var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,150), "_buttonColorArray");
				var _buttonPressedColor = make_colour_rgb(0,0,100);
                
				var _buttonPosArray = scr_create_obj_array4_ui(scr_ui_menu_get_width(VaultContainer), 40);
                
				var _fontColor = c_white;
		
				var _buttonText = _item.itemStats[ITEM_STATS_NAME];
				if(_item.itemStats[ITEM_STATS_TYPE] == ITEM_TYPE_CONSUMABLE){
					_buttonText += " (" + string(_item.uses)+ ")";
				}
                
				var _buttonX = VaultContainer.x;
				var _buttonY = _currentY;
                            
				var _buttonInfo = scr_ui_get_obj_ui_button_information(5, scr_ui_vault_item_clicked, self, 
					_buttonText, fnt_default_medium, _fontColor, 1.0, 0.8);
                
				var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
					_buttonColorArray, _buttonPressedColor, false, _buttonInfo, VaultContainer);
			
				_button.tempVal = i;
                
				scr_destroy_instance(_buttonColorArray);
				scr_destroy_instance(_buttonPosArray);
				scr_destroy_instance(_buttonInfo);
				_currentY += _yOffset;
		
				scr_linked_list_add(uiObjects, _button);
		
				// Item icon
					var _buttonIcon = scr_ui_draw_sprite_constructor(VaultContainer.leftX + 20, 
						_button.y, _item.icon, 0, VaultContainer);
					_buttonIcon.depthOffset = _button.depth - 10;
					scr_linked_list_add(uiObjects, _buttonIcon);
				//End of item icon
		
				_button.isVisible = true;
				_buttonIcon.isVisible = true;
		
			// Item Button Borderles
		}
	}
	
	

	//Vault name text
        var _x = InventoryContainer.leftX + 10; 
        var _y = InventoryContainer.topY - 20;
        var _text = "Inventory";
            
        var _font = scr_ui_font_constructor(_x,_y, _text, fnt_default_large, c_white, 1.0, fa_left, fa_middle, MenuContainer);
        _font.isVisible = true;
	//Vault name text

	var _yOffset = 50;
	var _currentY = InventoryContainer.topY + _yOffset;

	for(var i = 0; i < INVENTORY_MAX; i++){
		var _item = character.inventory[i];
		if(_item != noone){
			// Item Button Borderless
				var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,150), "_buttonColorArray");
				var _buttonPressedColor = make_colour_rgb(0,0,100);
                
				var _buttonPosArray = scr_create_obj_array4_ui(scr_ui_menu_get_width(InventoryContainer), 40);
                
				var _fontColor = c_white;
		
				var _buttonText = _item.itemStats[ITEM_STATS_NAME];
				if(_item.itemStats[ITEM_STATS_TYPE] == ITEM_TYPE_CONSUMABLE){
					_buttonText += " (" + string(_item.uses)+ ")";
				}
                
				var _buttonX = InventoryContainer.x;
				var _buttonY = _currentY;
                            
				var _buttonInfo = scr_ui_get_obj_ui_button_information(5, scr_ui_vault_inventory_item_clicked, self, 
					_buttonText, fnt_default_medium, _fontColor, 1.0, 0.8);
                
				var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
					_buttonColorArray, _buttonPressedColor, false, _buttonInfo, InventoryContainer);
			
				_button.tempVal = i;
                
				scr_destroy_instance(_buttonColorArray);
				scr_destroy_instance(_buttonPosArray);
				scr_destroy_instance(_buttonInfo);
				_currentY += _yOffset;
		
				scr_linked_list_add(uiObjects, _button);
		
				// Item icon
					var _buttonIcon = scr_ui_draw_sprite_constructor(InventoryContainer.leftX + 20, 
						_button.y, _item.icon, 0, InventoryContainer);
					_buttonIcon.depthOffset = _button.depth - 10;
					scr_linked_list_add(uiObjects, _buttonIcon);
				//End of item icon
		
				_button.isVisible = true;
				_buttonIcon.isVisible = true;
		
			// Item Button Borderles
		}
	}
}
