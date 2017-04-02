///@description Creates a small health potion, which heals for 15 health.
///@param owner The owner of the object.

var _owner = argument0;

var _potion = scr_item_consumable_create(0,0,obj_inventory_consumable_parent, "Medium Health Potion", 1,50,3,0.09,_owner,spr_consumable_small_health_potion_icon);

_potion.effectsPhysical[STATS_PHYSICAL_HEALTH] = 30;

return _potion;