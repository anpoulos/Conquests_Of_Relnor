///@param x 0
///@param y 1
///@param obj_item 2
///@param item_stats_name 3
///@param item_stats_weight   4
///@param item_stats_value 5
///@param item_stats_drop_percentage 6
///@param icon 7
///@param groundSprite 8 
///@param owner 9
///@param isVisible 10

var _item = instance_create(argument0, argument1, argument2);

_item.itemStats[ITEM_STATS_NAME] = argument3;
_item.itemStats[ITEM_STATS_WEIGHT] = argument4;
_item.itemStats[ITEM_STATS_VALUE] = argument5;
_item.itemStats[ITEM_STATS_DROP_PERCENTAGE] = argument6;

if(argument7 != noone){
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