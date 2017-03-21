///scr_lifeform_parent_inventory_add(lifeform, object)
///@param lifeform
///@param object
var _lifeform = argument0;
var _object = argument1;

for(var i = 0; i < INVENTORY_MAX; i++){
    if(_lifeform.inventory[i] == noone){
        _lifeform.inventory[i] = _object;
		_lifeform.inventory[i].owner = _lifeform;
        return true;
    }
}

return false;
