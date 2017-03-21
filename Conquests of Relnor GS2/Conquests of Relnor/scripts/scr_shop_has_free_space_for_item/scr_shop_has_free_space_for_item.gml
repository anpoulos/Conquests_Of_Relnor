///@param obj_shop
///@param obj_item

var _shop = argument0;
var _item = argument1;

for(var i = 0; i < SHOP_ITEMS_MAX; i++){
	if(_shop.owner.shopItems[i] == noone){
		return true;
	}
	if(scr_item_equals(_shop.owner.shopItems[i], _item)){
		return true;
	}
}