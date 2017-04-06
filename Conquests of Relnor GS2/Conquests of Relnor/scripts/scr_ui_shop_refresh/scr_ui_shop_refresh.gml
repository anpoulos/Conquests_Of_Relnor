///@param obj_shop
var _shop = argument0;
var _player = instance_find(obj_player, 0);
var _shopKeeper = _shop.owner;

var _margin = 20;

while(!scr_linked_list_is_empty(_shop.itemButtons)){
	instance_destroy(scr_linked_list_remove_next(_shop.itemButtons));
}

var _yOffset = 40;
var _currentY = _shop.shopKeeperItemsContainer.topY + _yOffset*3;

for(var i = 0; i < SHOP_ITEMS_MAX; i++){
	
	var _stock = scr_linked_list_size(_shop.owner.shopItems[i]);
	if(_stock == 0){
		continue;
	}
	var _item = scr_linked_list_peak(_shop.owner.shopItems[i]);
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

var _currentY = _shop.playerItemsContainer.topY + _yOffset*3;
for(var i = 0; i < INVENTORY_MAX; i++){
	var _item = _shop.player.inventory[i];
	if(_item == noone){
		continue;
	}
	// Item Button Borderless
	    var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,150), "_buttonColorArray");
	    var _buttonPressedColor = make_colour_rgb(0,0,100);
                
	    var _buttonPosArray = scr_create_obj_array4_ui(scr_ui_menu_get_width(_shop.playerItemsContainer), 40);
                
	    var _fontColor = c_white;
		
		var _buttonText = _item.itemStats[ITEM_STATS_NAME];
		if(_item.itemStats[ITEM_STATS_TYPE] == ITEM_TYPE_CONSUMABLE){
			_buttonText += " (" + string(_item.uses)+ ")";
		}
                
	    var _buttonX = _shop.playerItemsContainer.x;
	    var _buttonY = _currentY;
                            
	    var _buttonInfo = scr_ui_get_obj_ui_button_information(5, scr_ui_shop_button_player_item_select, _shop, 
			_buttonText, fnt_default_medium, _fontColor, 1.0, 0.8);
                
	    var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
			_buttonColorArray, _buttonPressedColor, false, _buttonInfo, _shop.playerItemsContainer);
			
		_button.tempVal = i;
                
	    scr_destroy_instance(_buttonColorArray);
	    scr_destroy_instance(_buttonPosArray);
	    scr_destroy_instance(_buttonInfo);
		_currentY += _yOffset;
		
		scr_linked_list_add(_shop.itemButtons, _button);
		
		// Item icon
			var _buttonIcon = scr_ui_draw_sprite_constructor(_shop.playerItemsContainer.leftX + 20, 
				_button.y, _item.icon, 0,_shop.playerItemsContainer);
			_buttonIcon.depthOffset = _button.depth - 10;
			scr_linked_list_add(_shop.itemButtons, _buttonIcon);
		//End of item icon
		
		_button.isVisible = true;
		_buttonIcon.isVisible = true;
		
	// Item Button Borderless
}

//Shop Keeper Text
    var _x = _shop.shopKeeperItemsContainer.leftX + _margin;
    var _y = _shop.shopKeeperItemsContainer.topY + _margin*2;
    var _text = _shop.owner.name+"'s Items";
            
    var _font = scr_ui_font_constructor(_x,_y, _text, fnt_default_large, c_white, 1.0, fa_left, fa_middle, _shop.shopKeeperItemsContainer);
    _font.isVisible = true;
	scr_linked_list_add(_shop.itemButtons, _font);
	
	var _x = _shop.shopKeeperItemsContainer.leftX + _margin;
	var _y = _font.y + _margin*2;
    var _text = "Shop Gold: "+string(_shop.owner.shopGold);
	
	var _font = scr_ui_font_constructor(_x,_y, _text, fnt_default_large, c_white, 1.0, fa_left, fa_middle, _shop.shopKeeperItemsContainer);
    _font.isVisible = true;
	scr_linked_list_add(_shop.itemButtons, _font);
//End of shop keeper text


//Player Items Text
    var _x = _shop.playerItemsContainer.leftX + _margin;
    var _y = _shop.playerItemsContainer.topY + _margin*2;
    var _text = _shop.player.name+"'s Items";
            
    var _font = scr_ui_font_constructor(_x,_y, _text, fnt_default_large, c_white, 1.0, fa_left, fa_middle, _shop.playerItemsContainer);
    _font.isVisible = true;
	scr_linked_list_add(_shop.itemButtons, _font);
	
	var _x = _shop.playerItemsContainer.leftX + _margin;
	var _y = _font.y + _margin*2;
    var _text = _shop.player.name+" Gold: "+string(_shop.player.gold);
	
	var _font = scr_ui_font_constructor(_x,_y, _text, fnt_default_large, c_white, 1.0, fa_left, fa_middle, _shop.playerItemsContainer);
    _font.isVisible = true;
	scr_linked_list_add(_shop.itemButtons, _font);
//End of player items text