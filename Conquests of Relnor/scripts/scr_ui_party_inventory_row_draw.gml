///scr_ui_party_inventory_row_draw

if(!isVisible){
    return false;
}

draw_self();

if(inventoryItem != noone){
    draw_set_halign(fa_left);
    draw_set_font(fnt_default_medium);
    draw_text_colour(x+20, y, inventoryItem.itemStats[ITEM_STATS_NAME], 
        c_white, c_white, c_white, c_white, 1);    
    draw_set_halign(fa_center);
}
