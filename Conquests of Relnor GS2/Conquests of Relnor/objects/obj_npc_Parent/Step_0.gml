/// @description Insert description here
// You can write your code in this editor
event_inherited();



if(isDead){	
	if(!respawns){
		instance_destroy();
	}
	var _dateCompare = scr_date_compare(spawnDay, spawnMonth, spawnYear, global.dateDay, global.dateMonth, global.dateYear);
	if(_dateCompare == -1 || _dateCompare == 0){
		var _npc = instance_create(spawnX, spawnY, object_index);
		_npc.respawns = true;
		_npc.spawnX = spawnX;
		_npc.spawnY = spawnY;
		scr_lifeform_add_exp(_npc, global.player.experience);
		instance_destroy();	
	}
}
else if(!phy_active){
	var _totalEnemyTypes = scr_linked_list_size(possibleEnemies);
	
	for(var i = 0; i < _totalEnemyTypes; i++){
		var _enemyType = scr_linked_list_get_next(possibleEnemies);
		
		var _collidedLifeform = collision_rectangle(x - size, y - size, x + size, y + size,
			_enemyType, false, false);
			
		if(_collidedLifeform != noone && 
		instance_exists(_collidedLifeform) && 
		scr_misc_allegiance_are_enemies(allegiance, _collidedLifeform.allegiance)){
			phy_active = true;
			alarm[6] = -1;
			walkThroughNPCs = false;
			break;
		}
		
	}	
	
}