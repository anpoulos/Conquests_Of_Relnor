
var _roomId = scr_room_get_id(room);

if(_roomId == -1){
	return false;
}

if(global.mapControl.objectList[_roomId] == noone){
	global.mapControl.objectList[_roomId] = scr_linked_list_create();
}

if(global.mapControl.lifeformList[_roomId] == noone){
	global.mapControl.lifeformList[_roomId] = scr_linked_list_create();
}

if(global.mapControl.itemList[_roomId] == noone){
	global.mapControl.itemList[_roomId] = scr_linked_list_create();
}

if(global.isWorldMap){
	var _totalSquares = instance_number(obj_map_world_square);
	for(var i = 0; i < _totalSquares; i++){
		var _square = instance_find(obj_map_world_square, i);
		if(_square.roomId == noone){
			_square.isVisible = false;
			_square.roomId = _roomId;
		}
	}
}

for(var i = 0; i < instance_number(obj_inventory_item_parent); i++){
	var _item = instance_find(obj_inventory_item_parent, i);
	if(_item.isVisible){
		_item.isVisible = false;
		scr_linked_list_add(global.mapControl.itemList[_roomId], _item);
	}
}

for(var i = 0; i < instance_number(obj_map_parent); i++){

	var _object = instance_find(obj_map_parent, i);
	
	var _objectSave = scr_save_convert_to_object_save(_object);
	
	scr_linked_list_add(global.mapControl.objectList[_roomId], _objectSave);
}

for(var k = 0; k < instance_number(obj_npc_Parent); k++){
	var _lifeform = instance_find(obj_npc_Parent, k);
	
	var _lifeformSave = scr_save_convert_to_lifeform_save(_lifeform);
	
	if(!_lifeformSave.mapLocked && _lifeform.followTarget != noone && _lifeform.followTarget == global.player){
		with(_lifeformSave){
			selected = _lifeform.selected;
		}
		scr_linked_list_add(global.mapControl.followingList, _lifeformSave);
	}
	else{
		scr_linked_list_add(global.mapControl.lifeformList[_roomId], _lifeformSave);
	}
}