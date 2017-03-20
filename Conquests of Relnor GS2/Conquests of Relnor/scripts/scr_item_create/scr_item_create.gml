///@param x 
///@param y
///@param obj_item
///@param item_stats_name
///@param item_stats_weight
///@param item_stats_value
///@param icon
///@param sprite
///@param owner
///@param isVisible

var _item = instance_create(argument0, argument1, argument2);

_item.itemStats[ITEM_STATS_NAME] = argument3;
_item.itemStats[ITEM_STATS_WEIGHT] = argument4;
_item.itemStats[ITEM_STATS_VALUE] = argument5;

if(_item.icon == noone){
	_item.icon = argument6;
}

if(_item.sprite == noone){
	_item.icon = argument7;
}

_item.owner = argument8;

_item.isVisible = argument9;

return _item;