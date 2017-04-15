/// @description Insert description here
// You can write your code in this editor

var _additiveLights = scr_linked_list_size(global.additiveLights);

for(var i = 0; i < _additiveLights; i++){
	var _light = scr_linked_list_peak(_additiveLights);
	if(_light == self){
		scr_linked_list_remove_next(_additiveLights);
	}
	scr_linked_list_get_next(_additiveLights);
}