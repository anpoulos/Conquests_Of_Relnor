/// @description Constructor
// You can write your code in this editor

event_inherited();

for(var i = 0; i < SHOP_ITEMS_MAX; i++){
	shopItems[i] = scr_linked_list_create();
}
shopGold = 0;

hasDialogue = true;