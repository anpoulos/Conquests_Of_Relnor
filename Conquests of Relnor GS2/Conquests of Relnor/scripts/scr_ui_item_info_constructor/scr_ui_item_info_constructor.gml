///@param x
///@param y
///@param item
///@param menuContainer

var _itemInfo = instance_create(argument0, argument1, obj_ui_item_info);
_itemInfo.item = argument2;

if(argument3 != noone){
	scr_ui_menu_container_add_draw_object(_itemInfo, argument3);
}

return _itemInfo;