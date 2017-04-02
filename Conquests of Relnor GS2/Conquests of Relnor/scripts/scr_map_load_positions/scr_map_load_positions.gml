
var _roomId = scr_room_get_id(room);

if(_roomId == -1){
	return false;
}

if(global.mapSaves.itemList[_roomId] != noone){
	while(scr_linked_list_size(global.mapSaves.itemList[_roomId]) != 0){
		var _item = scr_linked_list_remove_next(global.mapSaves.itemList[_roomId]);
		_item.isVisible = true;
	}
}


if(global.mapSaves.lifeformList[_roomId] != noone){

	while(instance_number(obj_npc_Parent) != 0){
		instance_destroy(instance_find(obj_npc_Parent, 0));
	}

	var _lifeformList = global.mapSaves.lifeformList[scr_room_get_id(room)];

	while(scr_linked_list_size(_lifeformList) != 0){
		var _lifeformSave = scr_linked_list_remove_next(_lifeformList);
		var _lifeform = scr_map_convert_save_to_lifeform(_lifeformSave); //destroys _lifeformSave
	}

}

if(global.mapSaves.objectList[_roomId] != noone){

	for(var i = 0; i < instance_number(obj_map_parent); i++){
		with(obj_map_parent){
			instance_destroy();
		}
	}

	var _objectList = global.mapSaves.objectList[_roomId];
	while(scr_linked_list_size(_objectList) != 0){
		var _objectSave = scr_linked_list_remove_next(_objectList);
		global.loadingInstances = true;
		var _object = instance_create(_objectSave.x, _objectSave.y, _objectSave.objectIndex);
		_object.image_xscale = _objectSave.xScale;
		_object.image_yscale = _objectSave.yScale;
		_object.depth = _objectSave.objectDepth;
		global.loadingInstances = false;
		instance_destroy(_objectSave);
	}
	
}


