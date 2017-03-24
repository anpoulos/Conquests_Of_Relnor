///Draw

event_inherited();
if debug_mode
   {
   draw_text(display_get_gui_width()-64, 32, string_hash_to_newline("FPS = " + string(fps)));
   }

draw_text_color(30, 30, "Time: "+string(global.time), c_white, c_white, c_white, c_white, 1.0);
