///scr_room_finish_initialize

mp_grid_add_instances(global.aiGrid, obj_map_solid_parent, true);
global.playerSpawnX = noone;
global.playerSpawnY = noone;

var _groves = scr_linked_list_create();

for(var i = 0; i < instance_number(obj_grove_parent); i++){
	var _grove = instance_find(obj_grove_parent, i);
	scr_map_grove(_grove);
	scr_linked_list_add(_groves, _grove);
}

while(scr_linked_list_size(_groves) != 0){
	instance_destroy(scr_linked_list_remove_next(_groves));
}

scr_linked_list_destroy(_groves);