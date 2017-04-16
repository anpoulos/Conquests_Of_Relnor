
if(hasBodyParts){
	draw_sprite(body[BODY_BODY, face4Way], image_index, x, y);
	draw_sprite(body[BODY_EYES, face4Way], image_index, x, y);
}
else{
	draw_self();
}