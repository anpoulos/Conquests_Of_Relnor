///@param obj_item1
///@param obj_item2

var _item1 = argument0;
var _item2 = argument1;

if(_item1 == noone || _item2 == noone){
	return false;
}

for(var i = 0; i < ITEM_STATS_MAX; i++){
	if(_item1.itemStats[i] != _item2.itemStats[i]){
		return false;
	}
}

return true;

