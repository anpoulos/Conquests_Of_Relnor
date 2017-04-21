
///@param x
///@param y
///@param xScale
///@param yScale
///@param rotation
///@param color
///@param alpha

if(hasBodyParts){
	draw_sprite_ext(body[BODY_BODY, face4Way], image_index, argument0, argument1, argument2, argument3, argument4, argument5, argument6);
	draw_sprite_ext(body[BODY_EYES, face4Way], image_index, argument0, argument1, argument2, argument3, argument4, argument5, argument6);
}
else{
	draw_sprite_ext(sprite_index, image_index, argument0, argument1, argument2, argument3, argument4, argument5, argument6);
}