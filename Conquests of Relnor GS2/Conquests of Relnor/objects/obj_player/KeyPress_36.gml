///Goto title

for(var i = 0; i < instance_number(obj_inventory_item_parent); i++){
	var _item = instance_find(obj_inventory_item_parent, i);
	if(_item != noone && _item.owner == noone){
		instance_destroy(_item);
	}
}

instance_destroy();
global.player = noone;
room_goto(rm_menus_title);

