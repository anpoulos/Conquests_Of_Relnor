///Execute door opened script
image_speed = 0;
image_index = 3;
if(isOpen){
	isOpen = false;
}
else{
	isOpen = true;
}
script_execute(doorOpenedScript);

