///Goto title

for(var i = 0; i < instance_number(obj_inventory_item_parent); i++){
	instance_destroy(instance_find(obj_inventory_item_parent, i));
}

instance_destroy();
global.player = noone;
room_goto(rm_menus_title);

