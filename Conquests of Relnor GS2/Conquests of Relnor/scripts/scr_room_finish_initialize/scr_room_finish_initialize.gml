///scr_room_finish_initialize

scr_map_load_positions();

var _tempGrid = mp_grid_create(0,0,room_width/global.tileOffset, 
room_height/global.tileOffset, global.tileOffset, global.tileOffset);
mp_grid_add_instances(_tempGrid, obj_map_solid_parent, true);
mp_grid_add_instances(_tempGrid, obj_unwalkable, true);
mp_grid_add_instances(_tempGrid, obj_Lifeform_Parent, true);

global.playerSpawnX = noone;
global.playerSpawnY = noone;

var _roomId = scr_room_get_id(room);

if(global.mapSaves.objectList[_roomId] == noone){
	var _groups = scr_linked_list_create();

	for(var i = 0; i < instance_number(obj_group_parent); i++){
		var _group = instance_find(obj_group_parent, i);
		if(_group.roomId = _roomId){
			scr_map_group_generate(_group, _tempGrid);
			scr_linked_list_add(_groups, _group);
		}
	}

	while(scr_linked_list_size(_groups) != 0){
		instance_destroy(scr_linked_list_remove_next(_groups));
	}

	scr_linked_list_destroy(_groups);
}

	
var _maxDistance = 200;
var _currentDistance = 50;
var _angle = 0;
	
while(!scr_linked_list_is_empty(global.mapSaves.followingList)){
	var _lifeformSave = scr_linked_list_remove_next(global.mapSaves.followingList);
	var _foundFreeSpot = false;
	
	while(_currentDistance < _maxDistance && !_foundFreeSpot){
		
		var _checkX = global.player.x + _currentDistance*dcos(_angle);
		var _checkY = global.player.y - _currentDistance*dsin(_angle);
		
		if(mp_grid_get_cell(_tempGrid, _checkX div global.tileOffset, _checkY div global.tileOffset) != -1){
			var _lifeform = scr_save_convert_to_lifeform(_lifeformSave);
			instance_destroy(_lifeformSave);
			_lifeform.x = _checkX;
			_lifeform.y = _checkY;
			_lifeform.phy_position_x = _checkX;
			_lifeform.phy_position_y = _checkY;
			_lifeform.originX = _checkX;
			_lifeform.origsinY = _checkY;
			_lifeform.followTarget = global.player;
			_foundFreeSpot = true;
		}
		
		_angle += 10;
		
		if(_angle > 360){
			_angle = 0;
			_currentDistance += 10;
		}
	}
	
	if(!_foundFreeSpot){
		scr_linked_list_add(global.mapSaves.lifeformList[_lifeformSave.lastRoomId], _lifeformSave);
	}
}

mp_grid_destroy(_tempGrid);

mp_grid_add_instances(global.aiGrid, obj_map_solid_parent, true);
mp_grid_add_instances(global.aiGrid, obj_unwalkable, true);