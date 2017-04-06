///Clicked as shop object
///tempVal is the item index in owner.shopItems

selectedItem = scr_linked_list_peak(owner.shopItems[tempVal]);
buySellButton.text = "Buy";
buySellButton.clickedScript = scr_ui_shop_button_item_buy;
buySellButton.isVisible = true;
buySellButton.tempVal = owner.shopItems[tempVal];

if(selectedItem.itemStats[ITEM_STATS_VALUE] > player.gold){
	buySellButton.isVisible = false;
}