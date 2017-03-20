///Clicked as shop object
///tempVal is the item index in owner.shopItems

selectedItem = owner.shopItems[tempVal];
buySellButton.text = "Buy";
buySellButton.clickedScript = scr_ui_shop_button_item_buy;
buySellButton.isVisible = true;