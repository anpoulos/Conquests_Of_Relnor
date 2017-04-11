///@param owner

var _tome = scr_equipment_tome_create(argument0, "Beginner's Fire Tome", 200, 0.01);

_tome.spell[0] = obj_spell_fire_small;
_tome.spell[1] = obj_spell_fire_small_multi;

_tome.flameColor[0] = 255;
_tome.flameColor[1] = 50;
_tome.flameColor[2] = 50;

scr_equipment_tome_initialize(_tome);

return _tome;