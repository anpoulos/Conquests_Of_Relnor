
var _roomId = scr_room_get_id(room);

if(_roomId == -1){
	return false;
}

if(global.mapSaves.objectList[_roomId] == noone){
	global.mapSaves.objectList[_roomId] = scr_linked_list_create();
}

if(global.mapSaves.lifeformList[_roomId] == noone){
	global.mapSaves.lifeformList[_roomId] = scr_linked_list_create();
}

if(global.mapSaves.itemList[_roomId] == noone){
	global.mapSaves.itemList[_roomId] = scr_linked_list_create();
}

for(var i = 0; i < instance_number(obj_inventory_item_parent); i++){
	var _item = instance_find(obj_inventory_item_parent, i);
	if(_item.isVisible){
		_item.isVisible = false;
		scr_linked_list_add(global.mapSaves.itemList[_roomId], _item);
	}
}

for(var i = 0; i < instance_number(obj_map_parent); i++){

	var _object = instance_find(obj_map_parent, i);
	
	var _objectSave = scr_save_convert_to_object_save(_object);
	
	scr_linked_list_add(global.mapSaves.objectList[_roomId], _objectSave);
}

for(var k = 0; k < instance_number(obj_npc_Parent); k++){
	var _lifeform = instance_find(obj_npc_Parent, k);
	
	var _lifeformSave = scr_save_convert_to_lifeform_save(_lifeform);
	
	if(!_lifeformSave.mapLocked && _lifeform.followTarget != noone && _lifeform.followTarget == global.player){
		scr_linked_list_add(global.mapSaves.followingList, _lifeformSave);
	}
	else{
		scr_linked_list_add(global.mapSaves.lifeformList[_roomId], _lifeformSave);
	}
}