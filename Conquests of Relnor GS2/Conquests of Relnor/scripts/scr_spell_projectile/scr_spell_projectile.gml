
//is used as a obj_spell

var _selectedSpell = self;

with(owner){

	var _x = 0;
	var _y = 0;

	if(!isPlayer){
		//recalculate for NPCs
		_x = target.x;
		_y = target.y;
	}
	else{
		if(autoTarget != noone){
			_x = autoTarget.x;
			_y = autoTarget.y;
		}
		else{
			_x = mouse_x;
			_y = mouse_y;
		}
	}

	scr_lifeform_face_towards(self, _x,_y);
	
	
	if(_selectedSpell == noone || statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_ENERGY] < _selectedSpell.energyCost){
		if(isPlayer){
			state = moveState;
			return false;
		}
		else{
			scr_lifeform_recover_energy();
			scr_npc_choose_next_state();
			return false;
		}
	}
	
	image_speed = self.attackImageSpeed;

	sprite_index = attackSprite[self.face4Way];

	if (!attacked && image_index >= 3){
		
		var dmg = scr_spell_get_damage(self, _selectedSpell.amount);
		var _spellX = x;
		var _spellY = y-10;
		var _spell = scr_lifeform_damage_create(_spellX,_spellY,
			_selectedSpell.damageObject, dmg, 
			self, _x, _y);
		_spell.sprite_index = _spell.sprites[self.face8Way];
		scr_lifeform_damage_projectile_physical_fire(_spell);
			
		var _energyCost = scr_spell_get_energy_drain(self, _selectedSpell.energyCost);
			
		scr_lifeform_increase_stat(self, STATS_PHYSICAL, STATS_PHYSICAL_ENERGY, -_energyCost);
		
		attacked = true;
	}
}
