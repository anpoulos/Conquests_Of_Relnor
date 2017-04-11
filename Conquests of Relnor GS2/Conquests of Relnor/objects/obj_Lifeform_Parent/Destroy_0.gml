///Destroy attached objects

for(var i = 0; i < array_length_1d(self.equipment); i++){
    var _equipment = self.equipment[i];
    if(_equipment != noone && instance_exists(_equipment) && _equipment.owner == self){
        scr_destroy_instance(_equipment);
    }
}

for(var i = 0; i < INVENTORY_MAX; i++){
    var _item = self.inventory[i];
    if(_item != noone && instance_exists(_item) && _item.owner == self){
        scr_destroy_instance(_item);
    }
}

scr_linked_list_destroy(self.possibleEnemies);


