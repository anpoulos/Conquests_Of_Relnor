///Clicked as shop object
///tempVal is the item index in owner.shopItems

selectedItem = player.inventory[tempVal];
buySellButton.text = "Sell";
buySellButton.clickedScript = scr_ui_shop_button_item_sell;
buySellButton.isVisible = true;

if(selectedItem.itemStats[ITEM_STATS_VALUE] > owner.shopGold){
	buySellButton.isVisible = false;
}