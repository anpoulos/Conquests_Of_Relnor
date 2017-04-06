///Clicked as shop object
///selectedItem is the item
//tempVal is linked list containing the item

var _itemValue = selectedItem.itemStats[ITEM_STATS_VALUE];

if(_itemValue <= player.gold && 
	scr_lifeform_parent_inventory_get_free_space(player) > 0){
		var _shopItem = scr_linked_list_remove_next(tempVal);
		owner.shopGold += _itemValue;
		player.gold -= _itemValue;
		scr_lifeform_parent_inventory_add(player, _shopItem);
		if(scr_linked_list_is_empty(tempVal)){
			selectedItem = noone;
			buySellButton.isVisible = false;
		}
		else{
			selectedItem = scr_linked_list_peak(tempVal);
		}
		scr_ui_shop_refresh(self);
}