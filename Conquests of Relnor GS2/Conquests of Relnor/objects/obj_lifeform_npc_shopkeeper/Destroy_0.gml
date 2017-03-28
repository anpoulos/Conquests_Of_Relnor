/// @description Insert description here
// You can write your code in this editor

for(var i = 0; i < SHOP_ITEMS_MAX; i++){
	var _item = shopItems[i];
	if(_item != noone && _item.owner == self){
		instance_destroy(_item);
	}
}

event_inherited();