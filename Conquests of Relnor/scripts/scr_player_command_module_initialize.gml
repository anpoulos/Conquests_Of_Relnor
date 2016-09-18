///scr_player_command_initialize

player = noone;
selected = scr_linked_list_create();
totalSelected = 0;
unitArrivalCommand = scr_npc_commands_moved;
unitMoveCommand = scr_npc_commands_move;
mouseCommand = scr_player_commands_move_all;
totalSelectedWithEngage = 0;
totalSelectedWithWander = 0;
