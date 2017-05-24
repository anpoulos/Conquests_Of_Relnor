///Object Depth

depth = -y;

if(respawnTimer > 0){
	respawnTimer -= 1;
}

if(respawnTimer == 0){
	respawnTimer = -1;
	
	var _npc = instance_create(x, y, respawnObject);
	scr_lifeform_add_exp(_npc, global.player.experience);
	
	instance_destroy(self);
}
