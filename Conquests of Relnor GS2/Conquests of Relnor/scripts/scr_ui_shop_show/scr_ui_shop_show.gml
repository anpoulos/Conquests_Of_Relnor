///@param obj_shopkeeper

var _shopKeeper = argument0;

var _shop = instance_create(0,0,obj_ui_shop);

_shop.owner = _shopKeeper;

scr_ui_shop_refresh(_shop);

with(instance_find(obj_player, 0)){
	scr_player_enable_busy();
	    
	scr_ui_menus_hide_all();
	_shop.shopContainer.isVisible = true;
}

with(_shopKeeper){
	scr_npc_enable_busy();
}

