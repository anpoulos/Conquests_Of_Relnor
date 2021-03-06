
var _roomId = scr_room_get_id(room);

if(_roomId == -1){
	return false;
}

if(global.mapControl.itemList[_roomId] != noone){
	while(scr_linked_list_size(global.mapControl.itemList[_roomId]) != 0){
		var _item = scr_linked_list_remove_next(global.mapControl.itemList[_roomId]);
		_item.isVisible = true;
	}
}


if(global.mapControl.lifeformList[_roomId] != noone){

	while(instance_number(obj_npc_Parent) != 0){
		instance_destroy(instance_find(obj_npc_Parent, 0));
	}

	var _lifeformList = global.mapControl.lifeformList[scr_room_get_id(room)];

	while(scr_linked_list_size(_lifeformList) != 0){
		var _lifeformSave = scr_linked_list_remove_next(_lifeformList);
		var _lifeform = scr_save_convert_to_lifeform(_lifeformSave); 
		instance_destroy(_lifeformSave);		
	}

}

if(global.mapControl.objectList[_roomId] != noone){

	if(global.isWorldMap){
		var _totalSquares = instance_number(obj_map_world_square);
		for(var i = 0; i < _totalSquares; i++){
			var _square = instance_find(obj_map_world_square, i);
			if(_square.roomId == scr_room_get_id(room)){
				_square.isVisible = true;
				mp_grid_add_cell(global.worldMapGrid, _square.cellX, _square.cellY);
			}
			if(_square.roomId == noone){
				instance_destroy(_square);
			}
		}
	}

	for(var i = 0; i < instance_number(obj_map_parent); i++){
		with(obj_map_parent){
			instance_destroy();
		}
	}

	var _objectList = global.mapControl.objectList[_roomId];
	while(scr_linked_list_size(_objectList) != 0){
		var _objectSave = scr_linked_list_remove_next(_objectList);
		var _object = scr_save_convert_to_object(_objectSave);
		instance_destroy(_objectSave);
	}
	
}


