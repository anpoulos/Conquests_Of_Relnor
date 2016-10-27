///scr_equipment_weapons_create(obj_equipment_weapon, name, weight, damage, icon)

var _weapon = instance_create(0,0,argument0);

_weapon.name = argument1;
_weapon.weight = argument2;
_weapon.damage = argument3;
_weapon.icon = argument4;

return _weapon;
