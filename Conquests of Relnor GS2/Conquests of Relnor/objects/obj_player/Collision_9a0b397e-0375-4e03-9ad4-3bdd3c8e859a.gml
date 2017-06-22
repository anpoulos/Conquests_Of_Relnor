/// @description Insert description here
// You can write your code in this editor

if(!isBusy && triggers[TRIGGER_USE]){
	if(other.useScript != noone){
		with(other){
			script_execute(useScript);
		}
	}
}