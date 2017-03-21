///Destroy attached objects

for(var i = 0; i < array_length_1d(self.equipment); i++){
    var _equipment = self.equipment[i];
    if(_equipment != noone && !_equipment.isVisible){
        scr_destroy_instance(_equipment);
    }
}

for(var i = 0; i < INVENTORY_MAX; i++){
    var _item = self.inventory[i];
    if(_item != noone && !_item.isVisible){
        scr_destroy_instance(_item);
    }
}

scr_linked_list_destroy(self.possibleEnemies);


