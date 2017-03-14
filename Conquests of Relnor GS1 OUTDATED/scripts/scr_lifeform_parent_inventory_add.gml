///scr_lifeform_parent_inventory_add(lifeform, object)
var _lifeform = argument0;
var _object = argument1;

for(var i = 0; i < INVENTORY_MAX; i++){
    if(_lifeform.inventory[i] == noone){
        _lifeform.inventory[i] = _object;
        return true;
    }
}

return false;
