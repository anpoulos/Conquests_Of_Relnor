/// @description Insert description here
// You can write your code in this editor
if(isVisible){
	if(spriteGoingUp){
		spriteOffset += 0.1;
	}
	else{
		spriteOffset -= 0.1;
	}
	
	if(spriteOffset >= 2.0){
		spriteGoingUp = false;
	}
	if(spriteOffset <= 0.0){
		spriteGoingUp = true
	}
	
	draw_set_alpha(0.75);
	draw_sprite(groundSprite, 0, x, y + spriteOffset);
	draw_set_alpha(1);
}