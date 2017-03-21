///@param x 
///@param y
///@param obj_item
///@param item_stats_name
///@param item_stats_weight
///@param item_stats_value
///@param item_stats_drop_percentage
///@param icon
///@param groundSprite
///@param owner
///@param isVisible

var _item = instance_create(argument0, argument1, argument2);

_item.itemStats[ITEM_STATS_NAME] = argument3;
_item.itemStats[ITEM_STATS_WEIGHT] = argument4;
_item.itemStats[ITEM_STATS_VALUE] = argument5;
_item.itemStats[ITEM_STATS_DROP_PERCENTAGE] = argument6;

if(_item.icon == noone){
	_item.icon = argument7;
}

if(_item.groundSprite == noone){
	if(argument8 == noone){
		_item.groundSprite = _item.icon;
	}
	else{
		_item.groundSprite = argument8;
	}
}

_item.owner = argument9;

_item.isVisible = argument10;

return _item;