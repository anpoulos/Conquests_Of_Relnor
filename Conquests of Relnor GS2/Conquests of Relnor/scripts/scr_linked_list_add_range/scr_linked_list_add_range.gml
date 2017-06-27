///@param linkedList
///@param linkedListToBeAdded

var _size = scr_linked_list_size(argument1);
for(var i = 0; i < _size; i++){
	scr_linked_list_add(argument0, scr_linked_list_get_next(argument1));
}