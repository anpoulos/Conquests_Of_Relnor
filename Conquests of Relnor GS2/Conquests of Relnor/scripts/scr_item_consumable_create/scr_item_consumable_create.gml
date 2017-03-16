///@description Creates a consumable object
///@param obj_consumable
///@param name
///@param effectsPhysical
///@param effectsIntelligence
///@param effectsTools
///@param effectsCommand
///@param owner

var _consumable = instance_create(0,0, argument0);
_consumable.itemStats[ITEM_STATS_NAME] = argument1;
_consumable.effectsPhysical = argument2;
_consumable.effectsIntelligence = argument3;
_consumable.effectsTools = argument4;
_consumable.effectsCommanding = argument5;
_consumable.owner = argument6;

return _consumable;

