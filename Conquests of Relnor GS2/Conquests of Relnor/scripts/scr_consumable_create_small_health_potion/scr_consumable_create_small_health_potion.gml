///@description Creates a small health potion, which heals for 15 health.
///@param owner The owner of the object.

var _owner = argument0;

var _potion = scr_item_consumable_create(0,0,obj_inventory_consumable_parent, "Small Health Potion", 1,15,2,_owner);

_potion.effectsPhysical[STATS_PHYSICAL_MAX] = 0;
_potion.effectsPhysical[STATS_PHYSICAL_HEALTH] = 15;

_potion.itemStats[ITEM_STATS_WEIGHT] = 1;
_potion.icon = spr_consumable_small_health_potion_icon;
_potion.uses = 2;

return _potion;