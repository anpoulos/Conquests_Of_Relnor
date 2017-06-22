/// @description Insert description here
// You can write your code in this editor

instance_destroy(global.player);

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