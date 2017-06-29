///Constructor, room initialize script called on creation code

global.allNpcs = scr_linked_list_create();

var _playerX = x;
var _playerY = y;

if(global.playerSpawnX != noone){
    _playerX = global.playerSpawnX;
}
if(global.playerSpawnY != noone){
    _playerY = global.playerSpawnY;
}

if(global.player == noone){
	global.player = instance_create(_playerX, _playerY, obj_player);
}
else{
	global.player.x = _playerX;
	global.player.y = _playerY;
	global.player.phy_position_x = _playerX;
	global.player.phy_position_y = _playerY;
	global.player.phy_fixed_rotation = true;

	global.player.view.x = global.player.x;
	global.player.view.y = global.player.y;
	with(global.player){
		scr_player_create_gui();
	}
	global.player.commandModule = instance_create(0,0,obj_player_command_module);
	global.player.commandModule.player = global.player;
	
	for(var i = 0; i < EQUIPMENT_TYPE_MAX; i++){
		var _item = global.player.equipment[i];
		if(_item != noone){
			if(_item.object_index == obj_equipment_torch_parent || 
			object_is_ancestor(_item.object_index, obj_equipment_torch_parent)){
				_item.flame = instance_create(_item.x, _item.y, _item.flameObject);
			}
		}
	}
}

instance_create(0,0,obj_map_time);