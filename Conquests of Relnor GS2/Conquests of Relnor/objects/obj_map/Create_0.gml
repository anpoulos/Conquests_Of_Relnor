///Constructor, room initialize script called on creation code

var _playerX = x;
var _playerY = y;

if(global.playerSpawnX != noone){
    _playerX = global.playerSpawnX;
}
if(global.playerSpawnY != noone){
    _playerY = global.playerSpawnY;
}

instance_create(_playerX, _playerY, obj_player);

instance_create(0,0,obj_map_time);