///scr_ui_party_inventory_row_draw

if(!isVisible){
    return false;
}

if(isSelected){
    draw_set_alpha(0.4);
    var _color = c_gray;
    draw_rectangle_colour(leftX, topY, rightX, bottomY, 
        _color, _color, _color, _color, false);
    draw_set_alpha(1.0);
}

draw_self();

if(inventoryItem != noone){
    draw_set_halign(fa_left);
    draw_set_font(fnt_default_medium);
    draw_text_colour(x+20, y, string_hash_to_newline(inventoryItem.itemStats[ITEM_STATS_NAME]), 
        c_white, c_white, c_white, c_white, 1);    
    draw_set_halign(fa_center);
}


