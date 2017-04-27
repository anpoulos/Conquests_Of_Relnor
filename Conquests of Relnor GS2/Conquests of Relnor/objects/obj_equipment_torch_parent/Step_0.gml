/// @description Insert description here
// You can write your code in this editor
event_inherited(); 

if(owner != noone && owner.isVisible && flame != noone){

	if(flame.color[0] != flameColor[0] || 
	flame.color[1] != flameColor[1] || 
	flame.color[2] != flameColor[2]){
		flame.color[0] = flameColor[0];
		flame.color[1] = flameColor[1];
		flame.color[2] = flameColor[2];
		flame.nightColorTarget[0] = flameColor[0];
		flame.nightColorTarget[1] = flameColor[1];
		flame.nightColorTarget[2] = flameColor[2];

		flame.dayColorTarget[0] = flameColor[0];
		flame.dayColorTarget[1] = flameColor[1];
		flame.dayColorTarget[2] = flameColor[2];
	}

	switch(owner.face4Way){
		case DOWN:
			flame.x = owner.x + 5;
			flame.y = owner.y - 10;
			flame.yOffset = 15;
			flame.xOffset = 0;
			flame.depth = -owner.y - 1;
		break;
		case UP:
			flame.x = owner.x - 10;
			flame.y = owner.y - 20;
			flame.yOffset = -10;
			flame.xOffset = 0;
			flame.depth = -owner.y + 1;
		break;
		case LEFT:
			flame.x = owner.x - 5;
			flame.y = owner.y - 10;
			flame.xOffset = -10;
			flame.yOffset = 0;
			flame.depth = -owner.y - 1;
		break;
		case RIGHT:
			flame.x = owner.x + 10;
			flame.y = owner.y - 10;
			flame.xOffset = 10;
			flame.yOffset = 0;
			flame.depth = -owner.y + 1;
		break;
	}
}