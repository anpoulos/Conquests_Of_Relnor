///scr_ui_party_character_panel_draw

if(selected){
    draw_set_alpha(0.4);
    draw_rectangle_color(leftX, topY, rightX, bottomY, 
    c_blue, c_blue, c_blue, c_blue, false);
    draw_set_alpha(1);
}

draw_sprite(character.sprites[0], 0, x, y);

