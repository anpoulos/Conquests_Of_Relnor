/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(ord("T"))){
	if(other.useScript != noone){
		with(other){
			script_execute(useScript);
		}
	}
}