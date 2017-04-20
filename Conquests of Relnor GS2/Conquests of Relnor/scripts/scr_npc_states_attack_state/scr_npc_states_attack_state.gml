///scr_npc_states_attack_state
alarm[2] = -1; //turn off idle alarm

if(target == noone || !instance_exists(target)){
    scr_npc_choose_next_state();
    return false;
}

var _distanceToTarget = point_distance(x,y,target.x,target.y);

var _primaryRange = reach;
if(equipment[EQUIPMENT_TYPE_WEAPON] != noone){
	_primaryRange = equipment[EQUIPMENT_TYPE_WEAPON].equipmentStats[EQUIPMENT_STATS_RANGE];
}

if(_distanceToTarget <= _primaryRange){
	scr_lifeform_combat_attack(equipment[EQUIPMENT_TYPE_WEAPON]);
	return true;
}

var _offhand = equipment[EQUIPMENT_TYPE_OFFHAND];
var _offhandRange = 0;
if(_offhand != noone){
	_offhandRange = _offhand.equipmentStats[EQUIPMENT_STATS_RANGE];
	if(_distanceToTarget <= _offhandRange){
	
		switch(_offhand.object_index){
		
			case obj_offhand_tome_parent:
				var _totalSpells = scr_linked_list_size(_offhand.initializedSpells);
				
				var _spell = scr_linked_list_peak(_offhand.initializedSpells);
				
				for(var i = 0; i < _totalSpells; i++){
					var _currentSpell = scr_linked_list_get_next(_offhand.initializedSpells);
					if(object_is_ancestor(_currentSpell.object_index, obj_spell_multi_parent)){
						//TODO decide if to use AOE based on targets surrounding our target
					}
					else{
						if(_currentSpell.amount > _spell.amount){
							_spell = _currentSpell;
						}
					}
				}
				
				_offhand.selectedSpell = _spell;
				offhandSpell = _offhand.selectedSpell;
				
				with(offhandSpell.useAs){
					script_execute(useScript);
				}
				return true;
			break;
		}
	}
}

var _effectiveRange = max(_primaryRange, _offhandRange);

var _desiredRange = _effectiveRange - size;
//if(_desiredRange < 0){
//	_desiredRange = 0;
//}

//var _angle = point_direction(target.x, target.y, x,y);

//var _desiredX = target.x + _desiredRange*dcos(_angle);
//var _desiredY = target.y - _desiredRange*dsin(_angle);

scr_npc_move_to(self, target.x, target.y, noone, _effectiveRange, false, false, self.runSpeed, self.sight, false);   


//if(triggers[TRIGGER_ATTACK]){
//	scr_lifeform_combat_attack(equipment[EQUIPMENT_TYPE_WEAPON]);
//}
//else if(triggers[TRIGGER_MAGIC]){
//	if(offhandSpell != noone){
//		with(offhandSpell.useAs){
//			script_execute(useScript);
//		}
//	}
//	else{
//		state = moveState;
//	}
//}


//if(triggers[TRIGGER_MAGIC_CYCLE]){
//	var _item = equipment[EQUIPMENT_TYPE_OFFHAND];
//	if(_item != noone && _item.object_index == obj_offhand_tome_parent){
//		_item.selectedSpell = scr_linked_list_get_next(_item.initializedSpells);
//		self.offhandSpell = _item.selectedSpell;
//		scr_player_gui_update_information();
//	}
//}
