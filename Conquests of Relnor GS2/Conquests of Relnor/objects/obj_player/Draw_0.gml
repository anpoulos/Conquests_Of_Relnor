///Debug Draw
event_inherited();
if(global.debug == 3){
    draw_set_alpha(0.2);
    mp_grid_draw(global.aiGrid);
    draw_set_alpha(1.0);
}

if(originalSleepTime != -1){
	//TODO draw sleep bubble
}

