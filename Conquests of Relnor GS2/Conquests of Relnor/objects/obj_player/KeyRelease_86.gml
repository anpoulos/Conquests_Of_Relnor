/// @description Insert description here
// You can write your code in this editor

if(virtualMouse != noone){
	instance_destroy(virtualMouse);
}
else{
	virtualMouse = instance_create(0,0, obj_virtual_mouse);
	virtualMouse.mode = VIRTUAL_MOUSE_MODE_MOUSE;
	virtualMouse.gui = true;
}