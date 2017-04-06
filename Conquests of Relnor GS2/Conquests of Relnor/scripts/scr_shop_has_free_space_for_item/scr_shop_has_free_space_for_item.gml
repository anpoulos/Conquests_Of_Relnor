///@param obj_shop
///@param obj_item

var _shop = argument0;
var _item = argument1;

for(var i = 0; i < SHOP_ITEMS_MAX; i++){
	if(scr_linked_list_is_empty(_shop.owner.shopItems[i])){
		return true;
	}
	var _shopItem = scr_linked_list_peak(_shop.owner.shopItems[i]);
	if(scr_item_equals(_shopItem, _item)){
		return true;
	}
}