///@description Creates a consumable object
///@param x 0
///@param y 1
///@param obj_consumable 2
///@param name 3
///@param weight 4
///@param value 5
///@param uses 6
///@param owner 7

var _consumable = scr_item_create(argument0, argument1, argument2, argument3, argument4,
		argument5,noone,noone,argument7, false);

_consumable.uses = argument6;

return _consumable;

