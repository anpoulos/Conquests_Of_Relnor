///Draw
event_inherited();

///Draw AI Path

if(global.debug == 1){

	if(moveToAccuracy > 0 && target != noone){
		draw_circle(target.x, target.y, moveToAccuracy, true);
	}

    draw_path(path, x,y, true);
}
