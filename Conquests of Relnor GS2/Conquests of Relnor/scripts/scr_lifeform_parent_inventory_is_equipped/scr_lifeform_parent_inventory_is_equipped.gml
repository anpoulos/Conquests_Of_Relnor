///@param lifeform
///@param item

var _lifeform = argument0;
var _item = argument1;

for(var i = 0; i < EQUIPMENT_TYPE_MAX; i++){
	if(_lifeform.equipment[i] == _item){
		return true;
	}
}

return false;