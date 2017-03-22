///@param owner The owner of the object.

var _owner = argument0;

var _consumable = scr_item_consumable_create(0,0,obj_inventory_consumable_parent, "Beef", 1, 4, 2, 0.95, _owner,spr_consumable_beef);

_consumable.effectsPhysical[STATS_PHYSICAL_HEALTH] = 10;

return _consumable;