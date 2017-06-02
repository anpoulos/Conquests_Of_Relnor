///scr_ui_font_parent_draw

if(isVisible){
   //draw text
    draw_set_color(color);
    draw_set_font(font);
    draw_set_halign(halign);
    draw_set_valign(valign);
    draw_set_alpha(alpha);
    draw_text(x,y,string_hash_to_newline(text));

    //reset text
    draw_set_halign(fa_left);
    draw_set_halign(fa_top);
    draw_set_colour(c_black);
    draw_set_font(fnt_default_medium);
    draw_set_alpha(1);
}
