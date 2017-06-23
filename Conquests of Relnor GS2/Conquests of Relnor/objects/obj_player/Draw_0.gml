///Debug Draw
event_inherited();
if(global.debug == 3){
    draw_set_alpha(0.2);
    mp_grid_draw(global.aiGrid);
    draw_set_alpha(1.0);
}
  
if(autoTarget != noone && instance_exists(autoTarget)){
	draw_set_alpha(0.5);
	draw_set_color(c_red);
	draw_circle(autoTarget.x, autoTarget.y, autoTarget.size div 2, true);
	draw_set_alpha(1.0);
}

