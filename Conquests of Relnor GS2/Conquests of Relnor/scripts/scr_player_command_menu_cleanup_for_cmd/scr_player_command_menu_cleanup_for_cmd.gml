///@command

if(commandMenu != noone && (argument0 == noone || commandMenu.currentCommand == argument0)){
	instance_destroy(commandMenu);
}