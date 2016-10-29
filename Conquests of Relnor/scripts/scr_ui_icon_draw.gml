///scr_ui_icon_draw

if(sprite != noone){
    sprite_index = sprite;
    draw_self();
}

if(name != ""){
    draw_set_halign(fa_left);
    draw_set_font(fnt_default_medium);
    draw_text_colour(x+20, y, name, c_white, c_white, c_white, c_white, 1);    
    draw_set_halign(fa_center);
}
