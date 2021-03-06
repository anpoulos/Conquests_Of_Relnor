
///@param fileName
///@param chat_window_object

var _fileName = argument0;
var _chatWindow = argument1;

var _file = file_text_open_read(_fileName);

if(_file == -1){
	return false;
}

var _highestBranchNumber = -1;
while(!file_text_eof(_file)){
    var _line = file_text_read_string(_file);
    var _args = scr_string_split(_line, " ");
    var _arg0 = ds_queue_dequeue(_args);
	
	if(_arg0 == "#branch"){
		var _number = real(ds_queue_dequeue(_args));
		if(_number > _highestBranchNumber){
			_highestBranchNumber = _number;
		}
	}
	
    ds_queue_destroy(_args);
	
    file_text_readln(_file);	
}
file_text_close(_file);

for(var i = 0; i < _highestBranchNumber; i++){
	_chatWindow.branches[i] = noone; //avoids memory issues
}

var _file = file_text_open_read(_fileName);

if(_file == -1){
	return false;
}

var _counter = 0;
var _branchIndex = -1;
var _branch = scr_linked_list_create();
while(!file_text_eof(_file)){
    var _line = file_text_read_string(_file);
    if(string_length(_line) == 0){
        file_text_readln(_file);
        continue;
    }
    
    if(string_char_at(_line, 0) == "#"){
        var _args = scr_string_split(_line, " ");
        var _arg0 = ds_queue_dequeue(_args);
        
        switch(_arg0){
            case "#branch":
                var _arg1 = ds_queue_dequeue(_args);
                if(_branchIndex != -1){ //avoids a memory leak
                    _chatWindow.branches[_branchIndex] = _branch;
                    _branch = scr_linked_list_create();
                }
                _branchIndex = real(_arg1);
            break;
            
            default:
                scr_linked_list_add(_branch, _line);
            break;
        }
        
        ds_queue_destroy(_args);
    }
    else if (!(string_char_at(_line, 0) == "/" && string_length(_line) > 1 && string_char_at(_line,1) == "/")){
        scr_linked_list_add(_branch, _line);
    }
    file_text_readln(_file);
}

_chatWindow.branches[_branchIndex] = _branch;

file_text_close(_file);

return true;
