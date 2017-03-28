///scr_room_finish_initialize

scr_map_load_positions();

mp_grid_add_instances(global.aiGrid, obj_map_solid_parent, true);
global.playerSpawnX = noone;
global.playerSpawnY = noone;

if(global.mapSaves.objectList[global.currentRoom] == noone){
	var _groups = scr_linked_list_create();

	for(var i = 0; i < instance_number(obj_group_parent); i++){
		var _group = instance_find(obj_group_parent, i);
		scr_map_group_generate(_group);
		scr_linked_list_add(_groups, _group);
	}

	while(scr_linked_list_size(_groups) != 0){
		instance_destroy(scr_linked_list_remove_next(_groups));
	}

	scr_linked_list_destroy(_groups);
}
