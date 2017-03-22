///@param array
///@param length

var _array = argument0;
var _length = argument1;

if(_length == noone){
	_length = array_length_1d(_array);
}

for(var i = 0; i < _length; i++){
	_array[i] = noone;
}