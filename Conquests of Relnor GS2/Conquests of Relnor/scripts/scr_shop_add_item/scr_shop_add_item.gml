///@param obj_shop
///@param obj_item

var _shop = argument0;
var _item = argument1;

for(var i = 0; i < SHOP_ITEMS_MAX; i++){
	var _shopItem = _shop.owner.shopItems[i];
	if(scr_item_equals(_item, _shopItem)){
		_shop.owner.shopItemsAmount[i] += 1;
		_item.owner = _shop.owner;
		return true;
	}
}

for(var i = 0; i < SHOP_ITEMS_MAX; i++){
	if(_shop.owner.shopItems[i] == noone){
		_shop.owner.shopItems[i] = _item;
		_shop.owner.shopItemsAmount[i] = 1;
		_item.owner = _shop.owner;
		return true;
	}
}
