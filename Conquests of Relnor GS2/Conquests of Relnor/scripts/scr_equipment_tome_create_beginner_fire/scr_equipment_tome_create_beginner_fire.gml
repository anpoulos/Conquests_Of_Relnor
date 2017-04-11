///@param owner

var _spellList = scr_linked_list_create();

scr_linked_list_add(_spellList, obj_spell_fire_small);
scr_linked_list_add(_spellList, obj_spell_fire_small_multi);

var _tome = scr_equipment_tome_create(argument0, "Beginner's Fire Tome", 200, 0.01, spr_tome, noone, _spellList, 255, 50, 50);

_tome.sprite[DOWN] = spr_tome_down;
_tome.spriteBehind[DOWN] = false;

_tome.sprite[LEFT] = spr_tome_left;
_tome.spriteBehind[LEFT] = false;

_tome.sprite[RIGHT] = spr_tome_right;
_tome.spriteBehind[RIGHT] = false;

_tome.sprite[UP] = spr_tome_up;
_tome.spriteBehind[UP] = true;

return _tome;