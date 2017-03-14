///Destroy attached objects

for(var i = 0; i < array_length_1d(self.equipment); i++){
    var _equipment = self.equipment[i];
    if(instance_exists(_equipment)){
        scr_destroy_instance(_equipment);
    }
}

scr_linked_list_destroy(self.possibleEnemies);


