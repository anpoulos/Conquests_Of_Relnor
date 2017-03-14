///Initialize Room
scr_room_begin_initialize();

var _playerX = x;
var _playerY = y;

if(global.playerSpawnX != noone){
    _playerX = global.playerSpawnX;
}
if(global.playerSpawnY != noone){
    _playerY = global.playerSpawnY;
}

instance_create(_playerX, _playerY, obj_player);

instance_destroy();

