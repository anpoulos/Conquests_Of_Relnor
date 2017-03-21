///clicked as shop object
///selectedItem is the item

var _itemValue = selectedItem.itemStats[ITEM_STATS_VALUE];

if(_itemValue <= owner.shopGold && 
	scr_shop_has_free_space_for_item(self, selectedItem)){
	
	for(var i = 0; i < INVENTORY_MAX; i++){
		var _item = player.inventory[i];
		if(_item == selectedItem){
	
			scr_shop_add_item(self, _item);
			owner.shopGold -= _itemValue;
			player.gold += _itemValue;
	
			selectedItem = noone;
			buySellButton.isVisible = false;
			
			player.inventory[i] = noone;
	
			scr_ui_shop_refresh(self);
			return true;
		}
	}
	
}