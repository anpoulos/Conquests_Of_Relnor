///scr_lifeform_parent_inventory_get_free_space(lifeform)
///@param lifeform

var _total = 0;
for(var i = 0; i < INVENTORY_MAX; i++){
    if(argument0.inventory[i] == noone){
        _total += 1;
    }
}

return _total;
