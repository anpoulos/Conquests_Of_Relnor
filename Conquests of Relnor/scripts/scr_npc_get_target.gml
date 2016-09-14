///scr_npc_get_target

if(self.isAggressive){
    for(var i = 0; i < array_length_1d(self.possibleEnemies); i++){
        var _enemyType = self.possibleEnemies[i];
        for(var j = 0; j < instance_number(_enemyType); j++){
            var _objectType = instance_find(_enemyType, j);
            var _distance = point_distance(self.x, self.y, _objectType.x, _objectType.y);
            if(_distance < self.sight){
                return _objectType;
            }
        }
    }
}

return noone;

