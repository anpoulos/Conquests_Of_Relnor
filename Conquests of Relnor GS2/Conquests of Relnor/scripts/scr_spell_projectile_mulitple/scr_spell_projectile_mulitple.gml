
//is used as a obj_spell

var _selectedSpell = self;

with(owner){
	image_speed = self.attackImageSpeed;

	var _x = 0;
	var _y = 0;

	if(!isPlayer){
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

	sprite_index = attackSprite[self.face4Way];

	if (!attacked && image_index >= 3){
		if(_selectedSpell != noone && statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_ENERGY] >= _selectedSpell.energyCost){
			
			var _iterations = _selectedSpell.others + 1;
			var _direction = point_direction(x,y,_x,_y);
			var _distance = point_distance(x,y,_x,_y);
			var _directionOffset = 10;
			_direction = _direction - (_iterations div 2)*_directionOffset;
				
			for(var i = 0; i < _iterations; i++){
				var _destinationX = x + _distance*dcos(_direction);
				var _destinationY = y - _distance*dsin(_direction);
		
			    var dmg = scr_spell_get_damage(self, _selectedSpell.amount);
			    var _spellX = x;
			    var _spellY = y-10;
			    var _spell = scr_lifeform_damage_create(_spellX,_spellY,
					_selectedSpell.damageObject, dmg, 
					self, _destinationX, _destinationY);
			    scr_lifeform_damage_projectile_physical_fire(_spell);
				
				_direction += _directionOffset;
			}
			    
			var _energyCost = scr_spell_get_energy_drain(self, _selectedSpell.energyCost);
			scr_lifeform_increase_stat(self, STATS_PHYSICAL, STATS_PHYSICAL_ENERGY, -_energyCost);
			_spell.sprite_index = _spell.sprites[self.face8Way];		
		}	
		attacked = true;
	}
}
