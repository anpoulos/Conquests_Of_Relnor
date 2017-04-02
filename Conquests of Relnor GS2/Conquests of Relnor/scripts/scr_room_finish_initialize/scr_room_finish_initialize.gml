///scr_room_finish_initialize

scr_map_load_positions();

mp_grid_add_instances(global.aiGrid, obj_map_solid_parent, true);
mp_grid_add_instances(global.aiGrid, obj_unwalkable, true);
global.playerSpawnX = noone;
global.playerSpawnY = noone;

var _roomId = scr_room_get_id(room);

if(global.mapSaves.objectList[_roomId] == noone){
	var _groups = scr_linked_list_create();

	for(var i = 0; i < instance_number(obj_group_parent); i++){
		var _group = instance_find(obj_group_parent, i);
		if(_group.roomId = _roomId){
			scr_map_group_generate(_group);
			scr_linked_list_add(_groups, _group);
		}
	}

	while(scr_linked_list_size(_groups) != 0){
		instance_destroy(scr_linked_list_remove_next(_groups));
	}

	scr_linked_list_destroy(_groups);
}
