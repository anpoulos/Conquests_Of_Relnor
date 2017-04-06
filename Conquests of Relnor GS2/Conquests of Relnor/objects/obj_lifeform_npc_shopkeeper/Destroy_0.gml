/// @description Insert description here
// You can write your code in this editor

for(var i = 0; i < SHOP_ITEMS_MAX; i++){
	while(!scr_linked_list_is_empty(shopItems[i])){
		instance_destroy(scr_linked_list_remove_next(shopItems[i]));
	}
	scr_linked_list_destroy(shopItems[i]);
}

event_inherited();