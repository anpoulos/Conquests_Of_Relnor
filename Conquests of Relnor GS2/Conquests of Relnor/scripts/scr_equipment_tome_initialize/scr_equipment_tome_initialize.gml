///@param obj_tome

var _tome = argument0;

var _initializedSpells = _tome.initializedSpells;

while(!scr_linked_list_is_empty(_initializedSpells)){
	instance_destroy(scr_linked_list_remove_next(_initializedSpells));
}

for(var i = 0; i < SPELL_MAX; i++){
	var _spell = _tome.spell[i];
	if(_spell != noone){
		var _iSpell = instance_create(0,0,_spell);
		_iSpell.owner = _tome.owner;
		//TODO calculate max values here
		scr_linked_list_add(_tome.initializedSpells, _iSpell);
	}
}