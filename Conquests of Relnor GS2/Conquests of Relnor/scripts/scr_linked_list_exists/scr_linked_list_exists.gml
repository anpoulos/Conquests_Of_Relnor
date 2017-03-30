///@param linkedList
///@param object

var _linkedList = argument0;
var _object = argument1;
var _size = scr_linked_list_size(_linkedList);

var _found = false;

for(var i = 0; i < _size; i++){
	if(scr_linked_list_get_next(_linkedList) == _object){
		_found = true;
	}
}
return _found;