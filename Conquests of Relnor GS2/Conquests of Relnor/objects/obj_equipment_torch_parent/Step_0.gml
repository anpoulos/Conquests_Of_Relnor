/// @description Insert description here
// You can write your code in this editor
event_inherited(); 


if(owner != noone){
	switch(owner.face4Way){
		case DOWN:
			flame.x = owner.x + 5;
			flame.y = owner.y - 10;
			flame.yOffset = 25;
			flame.xOffset = 0;
			flame.depth = -owner.y - 1;
		break;
		case UP:
			flame.x = owner.x - 10;
			flame.y = owner.y - 20;
			flame.yOffset = -25;
			flame.xOffset = 0;
			flame.depth = -owner.y + 1;
		break;
		case LEFT:
			flame.x = owner.x - 5;
			flame.y = owner.y - 10;
			flame.xOffset = -25;
			flame.yOffset = 0;
			flame.depth = -owner.y - 1;
		break;
		case RIGHT:
			flame.x = owner.x + 10;
			flame.y = owner.y - 10;
			flame.xOffset = 25;
			flame.yOffset = 0;
			flame.depth = -owner.y + 1;
		break;
	}
}