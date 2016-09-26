///scr_npc_are_there_nearby_targets

    for(var i = 0; i < scr_linked_list_size(self.possibleEnemies); i++){
        var _enemyType = scr_linked_list_get_next(self.possibleEnemies);
        for(var j = 0; j < instance_number(_enemyType); j++){
            var _objectType = instance_find(_enemyType, j);
            var _distance = point_distance(self.x, self.y, _objectType.x, _objectType.y);
            if(_distance < self.sight){
                return true;
            }
        }
    }
