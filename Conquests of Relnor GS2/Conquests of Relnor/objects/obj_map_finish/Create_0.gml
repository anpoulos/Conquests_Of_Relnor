///scr_room_finish_initialize

mp_grid_add_instances(global.aiGrid, obj_map_solid_parent, true);
global.playerSpawnX = noone;
global.playerSpawnY = noone;

for(var i = 0; i < instance_number(obj_grove_parent); i++){
	var _grove = instance_find(obj_grove_parent, i);
	scr_map_grove(_grove);
}

instance_destroy();