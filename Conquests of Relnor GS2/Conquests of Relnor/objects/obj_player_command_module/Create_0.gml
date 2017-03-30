///Command Module
///scr_player_command_initialize

player = noone;
selected = scr_linked_list_create();
totalSelected = 0;
unitArrivalCommand = scr_npc_commands_moved;
unitMoveCommand = scr_npc_commands_move;
mouseCommand = noone;
totalSelectedWithEngage = 0;
totalSelectedWithWander = 0;
totalSelectedWithDefense = 0;
squarePreview = noone;
followButtonClicked = false;
followTarget = noone;

attackTarget = noone;
