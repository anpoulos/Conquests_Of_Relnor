
//0. Attach Troops To Nearest Camps
scr_square_troops_set_nearest_camps();

//1. Troop Centers
var _troopCenterTotal = instance_number(obj_map_world_square_troop_center);
for(var i = 0; i < _troopCenterTotal; i++){
	var _troopCenter = instance_find(obj_map_world_square_troop_center, i);
	
	//i. If all attached camps are not same allegiance, then switch allegiance to majority
	var _totalAttachedCamps = scr_linked_list_size(_troopCenter.camps);
	var _oneCampHasAllegiance = false;
	majorityAllegiance[ALLEGIANCE_MAX] = 0;
	for(var j = 0; j < _totalAttachedCamps && !_oneCampHasAllegiance; j++){
		var _campPoint = scr_linked_list_get_next(_troopCenter.camps);
		var _camp = scr_map_world_square_get_square(_campPoint);
		
		if(_camp.allegiance == _troopCenter.allegiance){
			_oneCampHasAllegiance = true;
		}
		else{
			majorityAllegiance[_camp.allegiance] += 1;
		}
	}
	
	var _currentMaxIndex = ALLEGIANCE_NEUTRAL;
	for(var j = 0; j < ALLEGIANCE_MAX; j++){
		if(majorityAllegiance[j] > majorityAllegiance[_currentMaxIndex]){
			_currentMaxIndex = j;
		}
	}
	
	if(!_oneCampHasAllegiance){
		scr_map_world_set_allegiance(_troopCenter, _currentMaxIndex);
	}
	
	//ii. Distribute Troops Appropriately
	scr_square_troop_center_output(_troopCenter);
}

//2. Camps
var _campTotal = instance_number(obj_map_world_square_camp);
for(var i = 0; i < _campTotal; i++){
	var _camp = instance_find(obj_map_world_square_camp, i);
	
	//i. Check to replenish
	if(_camp.units > SQUARE_UNITS_MAX){
		for(var j = -1; j <= 1; j++){
			var _cellX = _camp.cellX + j;
			for(var k = -1; k <= 1; k++){
				var _cellY = _camp.cellY + k;
				var _square = global.worldMapControl.squares[_cellX, _cellY];
				if(_square != noone && 
				_square.object_index == obj_map_world_square_troop && 
				_square.allegiance == _camp.allegiance &&
				_square.nearestCamp == _camp &&
				_square.units < SQUARE_UNITS_MAX){
					_square.units += 1;
					_camp.units -= 1;
					if(_square.units >= SQUARE_UNITS_MAX){
						_square.needsReplenishing = false;
					}
				}
			}
		}
	}
	
	//ii. Create new troops
	var _troopTotalOfSameAllegiance = 0;
	var _campTotalOfSameAllegiance = 0;
	for(var j = 0; j < _campTotal; j++){
		var _camp2 = instance_find(obj_map_world_square_camp, j);
		if(_camp2.allegiance == _camp.allegiance){
			_troopTotalOfSameAllegiance += scr_linked_list_size(_camp2.troops);
			_campTotalOfSameAllegiance += 1;
		}
	}
	
	var _totalAttachedTroops = scr_linked_list_size(_camp.troops);
	
	if(_troopTotalOfSameAllegiance < _campTotalOfSameAllegiance*2 && _camp.units >= SQUARE_UNITS_MAX*2 && _totalAttachedTroops < 2){
		var _placedTroop = false;
		for(var k = -1; k <= 1 && !_placedTroop; k++){
			var _cellX = _camp.cellX + k;
			for(var h = -1; h <= 1 && !_placedTroop; h++){
				var _cellY = _camp.cellY + h;
				if(global.worldMapControl.squares[_cellX, _cellY] == noone){
					var _newTroop = scr_map_world_square_create(_cellX, _cellY, obj_map_world_square_troop);
					_newTroop.units = SQUARE_UNITS_MAX;
					_camp.units -= SQUARE_UNITS_MAX;
					scr_map_world_set_allegiance(_newTroop, _camp.allegiance);
					_newTroop.nearestCamp = _camp;
					scr_square_camp_attach_troop(_camp, _newTroop);
					_placedTroop = true;
					_newTroop.hasTurn = false;
				}
			}
		}
	}
	
	//iii. For each attached troop, attempt to create a supply line
		//TODO ?	
}

//3. Troops

var _isEngagingPlayer = false;

var _troopTotal = instance_number(obj_map_world_square_troop);
var _troopsToDestroy = scr_linked_list_create();
for(var i = 0; i < _troopTotal; i++){
	var _troop = instance_find(obj_map_world_square_troop, i);
	
	if(!_troop.hasTurn){
		_troop.hasTurn = true;
		continue;
	}
	
	//i. If supply line does not exist, remove units
		//TODO ?
	
	//ii. Engage targets
	var _weakestAdjacentTarget = noone;
	for(var j = -1; j <= 1; j++){
		var _cellX = _troop.cellX + j; 
		for(var k = -1; k <= 1; k++){
			var _cellY = _troop.cellY + k;			
			
			if(global.player.mapControl.cellX == _cellX && 
			global.player.mapControl.cellY == _cellY &&
			scr_misc_allegiance_are_enemies(global.player.allegiance, _troop.allegiance)){
				if(_weakestAdjacentTarget == noone){
					_weakestAdjacentTarget = global.player.mapControl;
				}
				else{
					if(global.player.mapControl.units < _weakestAdjacentTarget.units){
						_weakestAdjacentTarget = global.player.mapControl;
					}
				}
			}
			
			var _adjacentSquare = global.worldMapControl.squares[_cellX, _cellY];
			
			if(_adjacentSquare != noone && 
			_adjacentSquare.allegiance != _troop.allegiance &&
			(_adjacentSquare.object_index == obj_map_world_square_troop || _adjacentSquare.object_index == obj_map_world_square_camp)){
				if(_weakestAdjacentTarget == noone){
					_weakestAdjacentTarget = _adjacentSquare;
				}
				else{
					if(_adjacentSquare.units < _weakestAdjacentTarget.units && _adjacentSquare.units > 0){
						_weakestAdjacentTarget = _adjacentSquare;
					}
				}
			}
		}
	}
	
	//if next to a target, attack
	if(_weakestAdjacentTarget != noone && _weakestAdjacentTarget.units > 0 && !_troop.needsReplenishing){
		switch(_weakestAdjacentTarget.object_index){
			case obj_player_map:
				//TODO attack player
				var _lines = scr_linked_list_create();
				scr_linked_list_add(_lines, "An enemy troop is engaging you.");
				scr_linked_list_add(_lines, "Their unit count, from what you can see, is "+string(_troop.units));
				scr_linked_list_add(_lines, "Do you wish to engage them or retreat?");
				
				scr_ui_menu_yes_no_create("Enemy Engagement", _lines, "Engage", 
					scr_square_player_engage_clicked, _troop, noone, "Retreat", 
					scr_square_player_retreat_clicked, global.player, noone);
					
				_isEngagingPlayer = true;
				
			break;
		
			case obj_map_world_square_troop:
				_weakestAdjacentTarget.units -= 1;
				_troop.units -= 1;
				if(_weakestAdjacentTarget.units <= 0){
					scr_linked_list_add(_troopsToDestroy, _weakestAdjacentTarget);
				}
			break;
			
			case obj_map_world_square_camp:
				_weakestAdjacentTarget.units -= 1;
				_troop.units -= 1;
				if(_weakestAdjacentTarget.units <= 0){
					scr_map_world_set_allegiance(_weakestAdjacentTarget, _troop.allegiance);
				}
			break;
		}
			
		if(_troop.units <= 0){
			scr_linked_list_add(_troopsToDestroy, _troop);
		}
		
		var _half = SQUARE_UNITS_MAX div 2;
		var _fourth = SQUARE_UNITS_MAX div 4;
		
		if(_troop.units <= _fourth){
			
			var _totalUnits = 0;
			var _allyTroops = scr_linked_list_create();
			
			for(var m = -1; m <= 1; m++){
				var _cellX = _troop.cellX + m;
				for(var n = -1; n <= 1; n++){
					var _cellY = _troop.cellY + n;
					var _adjacentSquare = global.worldMapControl.squares[_cellX, _cellY];
					if(_adjacentSquare != noone &&
					_adjacentSquare.allegiance == _troop.allegiance &&
					_adjacentSquare.object_index == obj_map_world_square_troop){
						_totalUnits += _adjacentSquare.units;
						scr_linked_list_add(_allyTroops, _adjacentSquare);
					}
				}
			}
			
			if(_totalUnits < _weakestAdjacentTarget.units){
				for(var m = 0; m < scr_linked_list_size(_allyTroops); m++){
					var _allyTroop = scr_linked_list_get_next(_allyTroops);
					_allyTroop.needsReplenishing = true;
				}
			}
			
			scr_linked_list_destroy(_allyTroops);
			
		}
		
	}
	else{
		if(_troop.units > SQUARE_UNITS_MAX div 2 && !_troop.needsReplenishing){ //search for a target
			
			var _closestTarget = noone;
			var _closestTargetDistance = MAX;
			
			var _totalTroops = instance_number(obj_map_world_square_troop);
			for(var j = 0; j < _totalTroops; j++){
				var _possibleTarget = instance_find(obj_map_world_square_troop, j);
				if(_possibleTarget.allegiance != _troop.allegiance){
					var _cells = scr_map_world_get_square_path(_troop.cellX, _troop.cellY, _possibleTarget.cellX, _possibleTarget.cellY);
					var _distance = scr_linked_list_size(_cells);
					if(_distance < _closestTargetDistance){
						_closestTarget = _possibleTarget;
						_closestTargetDistance = _distance;
					}
					scr_linked_list_destroy_all(_cells);
				}
			}
			
			var _totalCamps = instance_number(obj_map_world_square_camp);
			for(var j = 0; j < _totalCamps; j++){
				var _possibleTarget = instance_find(obj_map_world_square_camp, j);
				if(_possibleTarget.allegiance != _troop.allegiance){
					var _cells = scr_map_world_get_square_path(_troop.cellX, _troop.cellY, _possibleTarget.cellX, _possibleTarget.cellY);
					var _distance = scr_linked_list_size(_cells);
					if(_distance < _closestTargetDistance){
						_closestTarget = _possibleTarget;
						_closestTargetDistance = _distance;
					}
					scr_linked_list_destroy_all(_cells);
				}
			}
			
			var _playerMapObject = global.player.mapControl;
			if(_playerMapObject.allegiance != _troop.allegiance){
				var _cells = scr_map_world_get_square_path(_troop.cellX, _troop.cellY, global.player.mapControl.cellX, global.player.mapControl.cellY);
				var _distance = scr_linked_list_size(_cells);
				if(_distance < _closestTargetDistance){
					_closestTarget = _playerMapObject;
					_closestTargetDistance = _distance;
				}
				scr_linked_list_destroy_all(_cells);
			}
			
			if(_closestTarget != noone){
				var _cells = scr_map_world_get_square_path(_troop.cellX, _troop.cellY, _closestTarget.cellX, _closestTarget.cellY);
				if(scr_linked_list_size(_cells) > 1){
					var _nextCell = scr_linked_list_get_next(_cells);
					_troop.x = scr_map_square_get_transformed_coordinate(_nextCell.x);
					_troop.y = scr_map_square_get_transformed_coordinate(_nextCell.y);
					scr_map_world_square_set_cell(_troop);
				}
				scr_linked_list_destroy_all(_cells);
			}
			
		}
		else{ //move towards nearest camp
			_troop.needsReplenishing = true;
			var _cells = scr_map_world_get_square_path(_troop.cellX, _troop.cellY, _troop.nearestCamp.cellX, _troop.nearestCamp.cellY);
			if(scr_linked_list_size(_cells) > 1){
				var _nextCell = scr_linked_list_get_next(_cells);
				_troop.x = scr_map_square_get_transformed_coordinate(_nextCell.x);
				_troop.y = scr_map_square_get_transformed_coordinate(_nextCell.y);
				scr_map_world_square_set_cell(_troop);
			}
		}
	}
	
}

scr_linked_list_destroy_all(_troopsToDestroy);

global.player.mapControl.hasTurn = true;
if(!_isEngagingPlayer){
	scr_square_player_create_clickable_squares(global.player.mapControl);
}