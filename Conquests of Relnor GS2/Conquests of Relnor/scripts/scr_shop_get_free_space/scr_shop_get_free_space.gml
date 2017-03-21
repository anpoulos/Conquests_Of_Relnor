///@param obj_shop

var _total = 0;
var _shop = argument0;

for(var i = 0; i < SHOP_ITEMS_MAX; i++){
	if(_shop.owner.shopItems[i] != noone){
		_total += 1;
	}
}

return _total;