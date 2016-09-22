///scr_check_triggers

if(triggers[TRIGGER_ATTACK]){
    image_index = 0;
    state = attackState;
}

if(triggers[TRIGGER_FORMATION]){
    scr_player_commands_square_preview_create();
}

//always should be last to undo anything made earlier
if(triggers[TRIGGER_ESC]){
    scr_player_commands_deselect_all();
}
