///scr_string_compare(string1, string2)

//returns number of characters in common between two strings

var _string1 = argument0;
var _string2 = argument1;

var _stringLength = max(string_length(_string1), string_length(_string2));

var _total = 0;

for(var i = 0; i < _stringLength; i++){
    var _char1 = string_char_at(_string1, i);
    var _char2 = string_char_at(_string2, i);
    
    if(_char1 == _char2){
        _total += 1;
    }
}

return _total;
