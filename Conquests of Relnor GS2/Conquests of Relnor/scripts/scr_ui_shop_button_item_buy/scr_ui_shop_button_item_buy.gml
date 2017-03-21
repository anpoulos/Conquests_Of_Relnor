///Clicked as shop object
///selectedItem is the item

var _itemValue = selectedItem.itemStats[ITEM_STATS_VALUE];

if(_itemValue <= player.gold && 
	scr_lifeform_parent_inventory_get_free_space(player) > 0){
	for(var i = 0; i < SHOP_ITEMS_MAX; i++){
		var _shopItem = owner.shopItems[i];
		if(_shopItem == noone){
			continue;
		}
		if(_shopItem == selectedItem){
			owner.shopItemsAmount[i] -= 1;
			if(owner.shopItemsAmount[i] <= 0){
				owner.shopItems[i] = noone;
				selectedItem = noone;
				buySellButton.isVisible = false;
			}
			owner.shopGold += _itemValue;
			player.gold -= _itemValue;
			scr_lifeform_parent_inventory_add(player, _shopItem);
			scr_ui_shop_refresh(self);
		}
	}
}