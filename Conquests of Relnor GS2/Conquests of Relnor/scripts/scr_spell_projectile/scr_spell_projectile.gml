
//is used as a obj_spell

var _selectedSpell = self;

with(owner){
	image_speed = self.attackImageSpeed;

	var _x = mouse_x;
	var _y = mouse_y;

	if(!isPlayer){
		//recalculate for NPCs
	}

	scr_lifeform_face_towards(self, _x,_y);

	sprite_index = attackSprite[self.face4Way];

	if (!attacked && image_index >= 3){
		if(_selectedSpell != noone && statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_ENERGY] >= _selectedSpell.energyCost){
		
		    var dmg = _selectedSpell.amount;
		    var _spellX = x;
		    var _spellY = y-10;
		    var _spell = scr_lifeform_damage_create(_spellX,_spellY,
				_selectedSpell.damageObject, dmg, 
				self, _x, _y);
		    _spell.sprite_index = _spell.sprites[self.face8Way];
		    scr_lifeform_damage_projectile_physical_fire(_spell);
			
			scr_lifeform_increase_stat(self, STATS_PHYSICAL, STATS_PHYSICAL_ENERGY, -_selectedSpell.energyCost);
			
		    attacked = true;
		}
	}
}
