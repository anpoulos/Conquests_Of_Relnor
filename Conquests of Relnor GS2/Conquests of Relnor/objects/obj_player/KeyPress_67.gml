///Pause game

//TODO

if(global.gamePaused){
    global.gamePaused = false;
    scr_ui_notification_hide_pause_message();
}
else{
    global.gamePaused = true;
    scr_ui_notification_show_pause_message();
}

