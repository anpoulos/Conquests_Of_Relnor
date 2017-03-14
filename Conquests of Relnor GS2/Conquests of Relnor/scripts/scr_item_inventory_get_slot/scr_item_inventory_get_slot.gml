///scr_item_inventory_get_slot(item)

for(var i = 0; i < INVENTORY_MAX; i++){
    if(argument0.owner.inventory[i] == argument0){
        return i;
    }
}
return -1;
