///@param owner 0
///@param name 1
///@param value 2
///@param dropPercentage 3
///@param icon 4
///@param groundSprite 5
///@param spellsList 6
///@param flameColor0 7
///@param flameColor1 8
///@param flameColor2 9

var _tome = scr_equipment_offhand_create(argument4, argument5, obj_offhand_tome_parent, argument1, 5, argument2, 0, 0, 300, argument3, argument0, noone, noone);

_tome.uninitializedSpells = argument6;

_tome.flameColor[0] = argument7;
_tome.flameColor[1] = argument8;
_tome.flameColor[2] = argument9;

scr_equipment_tome_initialize(_tome);

return _tome;
