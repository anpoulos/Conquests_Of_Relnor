///@param lifeform

var _lifeform = argument0;

_lifeform.defence = 0;

for(var i = 0; i < EQUIPMENT_TYPE_MAX; i++){
	var _item = _lifeform.equipment[i];
	if(_item != noone && _item.equipmentStats[EQUIPMENT_STATS_DEFENCE] != noone){
		_lifeform.defence += _item.equipmentStats[EQUIPMENT_STATS_DEFENCE];
	}
}