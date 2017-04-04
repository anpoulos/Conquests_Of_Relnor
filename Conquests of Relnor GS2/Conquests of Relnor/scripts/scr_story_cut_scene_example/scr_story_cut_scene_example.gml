
var _man = instance_find(obj_npc_man_01, 0);
var _player = instance_find(obj_player, 0);

scr_npc_move_to(_man, _player.x, _player.y, noone, _man.size, true, false, _man.walkSpeed, 10000, true);