///@param linkedList
///@param object


var _list = argument0;
var _listSize = scr_linked_list_size(_list);
var _object = argument1;

for(var i = 0; i < _listSize; i++){
	var _listObject = scr_linked_list_peak(_list);
	if(_listObject == _object){
		scr_linked_list_remove_next(_list);
		return true;
	}
	else{
		scr_linked_list_get_next(_list);
	}
	
}

return false;