///scr_npc_get_closest_target

    var _minQ = ds_priority_create();
    for(var i = 0; i < scr_linked_list_size(self.possibleEnemies); i++){
        var _enemyType = scr_linked_list_get_next(self.possibleEnemies);
        for(var j = 0; j < instance_number(_enemyType); j++){
            var _objectType = instance_find(_enemyType, j);
            var _distance = point_distance(self.x, self.y, _objectType.x, _objectType.y);
            if(_distance < self.sight){
                ds_priority_add(_minQ, _objectType, _distance);
            }
        }
    }
    
    var _closestEnemy = ds_priority_find_min(_minQ);
    ds_priority_destroy(_minQ);
    if(!is_undefined(_closestEnemy) && instance_exists(_closestEnemy)){
        return _closestEnemy;
    }                

return noone;

