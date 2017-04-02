///@param owner The owner of the object.

var _owner = argument0;

var _consumable = scr_item_consumable_create(0,0,obj_inventory_consumable_parent, "Cheese", 1, 1, 2, 0.25, _owner,spr_consumable_cheese);

_consumable.effectsPhysical[STATS_PHYSICAL_HEALTH] = 5;

return _consumable;