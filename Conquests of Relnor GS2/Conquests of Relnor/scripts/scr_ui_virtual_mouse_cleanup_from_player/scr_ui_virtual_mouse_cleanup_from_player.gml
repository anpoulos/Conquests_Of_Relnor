
with(global.player){
	if(virtualMouse != noone){
		instance_destroy(virtualMouse);
		virtualMouse = noone;
	}
}