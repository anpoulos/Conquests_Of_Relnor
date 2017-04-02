///scr_room_finish_initialize

mp_grid_add_instances(global.aiGrid, obj_map_solid_parent, true);
mp_grid_add_instances(global.aiGrid, obj_unwalkable, true);
global.playerSpawnX = noone;
global.playerSpawnY = noone;

for(var i = 0; i < instance_number(obj_group_parent); i++){
	var _group = instance_find(obj_group_parent, i);
	scr_map_group_generate(_group);
}

instance_destroy();