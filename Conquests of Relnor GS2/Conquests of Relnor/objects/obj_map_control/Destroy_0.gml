/// @description Insert description here
// You can write your code in this editor

instance_destroy(global.player);

instance_destroy(global.worldMapControl);
mp_grid_destroy(global.worldMapGrid);

mp_grid_destroy(global.aiGrid);

with(obj_inventory_item_parent){
	instance_destroy();
}

audio_stop_all();

scr_linked_list_destroy_all(global.additiveLights);

for(var i = 0; i < ROOM_MAX; i++){
	if(lifeformList[i] != noone){
		scr_linked_list_destroy_all(lifeformList[i]);
	}
	if(objectList[i] != noone){
		scr_linked_list_destroy_all(objectList[i]);
	}
	if(itemList[i] != noone){
		scr_linked_list_destroy_all(itemList[i]);
	}
	if(vaultList[i] != noone){
		scr_linked_list_destroy_all(vaultList[i]);
	}
}

scr_linked_list_destroy_all(followingList);

room_goto(rm_menus_title);