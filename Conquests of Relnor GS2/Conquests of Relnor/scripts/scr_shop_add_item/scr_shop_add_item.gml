///@param obj_shop_owner
///@param obj_item

var _shopOwner = argument0;
var _item = argument1;

for(var i = 0; i < SHOP_ITEMS_MAX; i++){

	if(scr_linked_list_is_empty(_shopOwner.shopItems[i])){
		continue;
	}
	
	var _shopItem = scr_linked_list_get_next(_shopOwner.shopItems[i]);

	if(scr_item_equals(_item, _shopItem)){
		_item.owner = _shopOwner;
		scr_linked_list_add(_shopOwner.shopItems[i], _item);
		return true;
	}
}

for(var i = 0; i < SHOP_ITEMS_MAX; i++){
	if(scr_linked_list_is_empty(_shopOwner.shopItems[i])){
		_item.owner = _shopOwner;
		scr_linked_list_add(_shopOwner.shopItems[i], _item);
		return true;
	}
}
