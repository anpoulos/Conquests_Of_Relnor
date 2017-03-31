///@param owner

var _tome = scr_equipment_tome_create(argument0, "Beginner's Fire Tome", 200, 0.5);

_tome.spell[0] = obj_spell_fire_small;
_tome.spell[1] = obj_spell_fire_small_multi;

scr_equipment_tome_initialize(_tome);

return _tome;