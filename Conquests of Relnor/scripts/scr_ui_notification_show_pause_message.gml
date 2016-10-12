///scr_ui_notification_show_pause_message

if(PauseText != noone){
    PauseText.isVisible = true;
    return true;
}

//Paused Text
var _textX = round(display_get_gui_width()/2);
var _textY = round(display_get_gui_height()/2);

PauseText = scr_ui_font_constructor(_textX, _textY, 
"Game is currently paused. Press C to unpause or ESC to bring up the settings and controls.",
fnt_default_large, 
c_white, 1.0, fa_center, fa_middle, noone);
PauseText.isVisible = true;
//End of Paused Text
