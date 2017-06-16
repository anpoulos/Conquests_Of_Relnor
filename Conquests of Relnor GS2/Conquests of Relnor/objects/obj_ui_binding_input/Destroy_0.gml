/// @description Insert description here
// You can write your code in this editor

if(button != noone && instance_exists(button)){
	button.pressed = false;
}

if(cancelBindingButton != noone){
	instance_destroy(cancelBindingButton);
}