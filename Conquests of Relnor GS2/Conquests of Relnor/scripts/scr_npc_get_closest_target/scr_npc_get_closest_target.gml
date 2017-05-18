///scr_npc_get_closest_target
    
var _closestEnemy = noone;
var _closestEnemyDistance = MAX;
    
for(var i = 0; i < scr_linked_list_size(self.possibleEnemies); i++){
    var _enemyType = scr_linked_list_get_next(self.possibleEnemies);
	var _totalEnemies = instance_number(_enemyType);
    for(var j = 0; j < _totalEnemies; j++){
        var _objectType = instance_find(_enemyType, j);
        var _distance = point_distance(self.x, self.y, _objectType.x, _objectType.y);
			
		var _effectiveSite = engageDistance;
			
		if(global.isNight && !_objectType.isRevealed){
			_effectiveSite *= nightSightStrength;
		}
			
        if(_distance <= _effectiveSite && _distance < _closestEnemyDistance){
            _closestEnemy = _objectType;
            _closestEnemyDistance = _distance;
        }
    }
}           

return _closestEnemy;

