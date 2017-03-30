///@param oldLinkedList

var _tempList = scr_linked_list_create();

while(!scr_linked_list_is_empty(argument0)){
	scr_linked_list_add(_tempList, scr_linked_list_remove_next(argument0));
}

return _tempList;