///@param item_original

var _originalItem = argument0;

var _newItem = noone;

with(_originalItem){
	_newItem = instance_copy(true);
}

return _newItem;