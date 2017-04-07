///@param obj_ui_vault

with(argument0){
	if(vault == noone){
		return true;
	}

	return true;

	for(var i = 0; i < VAULT_MAX; i++){
		var _item = items[i];
		if(_item != noone){
			// Item Button Borderless
				var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,150), "_buttonColorArray");
				var _buttonPressedColor = make_colour_rgb(0,0,100);
                
				var _buttonPosArray = scr_create_obj_array4_ui(scr_ui_menu_get_width(_shop.shopKeeperItemsContainer), 40);
                
				var _fontColor = c_white;
		
				var _buttonText = _item.itemStats[ITEM_STATS_NAME];
				if(_item.itemStats[ITEM_STATS_TYPE] == ITEM_TYPE_CONSUMABLE){
					_buttonText += " (" + string(_item.uses)+ ")";
				}
				if(_stock > 1){
					_buttonText += " x" + string(_stock);
				}
                
				var _buttonX = _shop.shopKeeperItemsContainer.x;
				var _buttonY = _currentY;
                            
				var _buttonInfo = scr_ui_get_obj_ui_button_information(5, scr_ui_shop_button_keeper_item_select, _shop, 
					_buttonText, fnt_default_medium, _fontColor, 1.0, 0.8);
                
				var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
					_buttonColorArray, _buttonPressedColor, false, _buttonInfo, _shop.shopKeeperItemsContainer);
			
				_button.tempVal = i;
                
				scr_destroy_instance(_buttonColorArray);
				scr_destroy_instance(_buttonPosArray);
				scr_destroy_instance(_buttonInfo);
				_currentY += _yOffset;
		
				scr_linked_list_add(_shop.itemButtons, _button);
		
				// Item icon
					var _buttonIcon = scr_ui_draw_sprite_constructor(_shop.shopKeeperItemsContainer.leftX + 20, 
						_button.y, _item.icon, 0, _shop.shopKeeperItemsContainer);
					_buttonIcon.depthOffset = _button.depth - 10;
					scr_linked_list_add(_shop.itemButtons, _buttonIcon);
				//End of item icon
		
				_button.isVisible = true;
				_buttonIcon.isVisible = true;
		
			// Item Button Borderles
		}
	}
}
