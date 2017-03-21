///Draw Body
if(deadSprite != noone){
    draw_sprite(deadSprite, 0, x,y);
}
else{
	draw_sprite_ext(liveSprite, 0, x,y,1,1,90,make_color_rgb(200,200,200),1);
}

