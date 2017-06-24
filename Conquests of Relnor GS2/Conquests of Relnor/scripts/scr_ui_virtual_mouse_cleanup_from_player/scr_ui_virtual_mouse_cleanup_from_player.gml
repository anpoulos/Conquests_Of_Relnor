
with(global.player){
	if(virtualMouse != noone){
		virtualMouse.mouseX = 0; //avoids bugs
		virtualMouse.mouseY = 0;
		instance_destroy(virtualMouse);
	}
}