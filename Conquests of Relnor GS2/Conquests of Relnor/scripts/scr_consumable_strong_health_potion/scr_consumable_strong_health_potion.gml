///@description Creates a small health potion, which heals for 15 health.
///@param owner The owner of the object.

var _owner = argument0;

var _potion = scr_item_consumable_create(0,0,obj_inventory_consumable_parent, "Strong Health Potion", 1,150,5,0.25,_owner,spr_consumable_strong_health_potion);

_potion.effectsPhysical[STATS_PHYSICAL_HEALTH] = 45;

return _potion;