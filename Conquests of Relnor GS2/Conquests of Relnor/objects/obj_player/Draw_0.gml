///Debug Draw
event_inherited();
if(debug_mode){
    draw_set_alpha(0.2);
    mp_grid_draw(global.aiGrid);
    draw_set_alpha(1.0);
}
   

