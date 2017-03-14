///scr_ui_chat_load_branch(branchIndex)

var _branchIndex = argument0;

var _list = ChatWindow.branches[_branchIndex];

var _lineIndex = 0;
var _counter = 0;

ChatWindow.currentBranch = _branchIndex;

var _player = instance_find(obj_player, 0);

for(var i = 0; i < array_length_1d(ChatWindow.lines); i++){
    ChatWindow.lines[i].text = "";
}

for(var i = 0; i < scr_linked_list_size(_list); i++){
    var _line = scr_linked_list_get_next(_list);
    
    if(string_length(_line) == 0){
        continue;
    }    
    
    if(string_char_at(_line, 0) == '#'){
        var _args = scr_string_split(_line, " ");
        var _arg0 = ds_queue_dequeue(_args);
        
        switch(_arg0){
            case "#title":
                var _text = ds_queue_dequeue(_args);
                _text = string_replace_all(_text, "#default", ChatWindow.defaultNameText);
                _text = string_replace_all(_text, "#player", _player.name);
                _text = string_replace_all(_text, "_", " ");
                ChatWindow.NameText.text = _text;
            break;
        
            case "#button":
                var _buttonIndex = real(ds_queue_dequeue(_args));
                var _buttonCommand = ds_queue_dequeue(_args);
                
                switch(_buttonCommand){
                    case "#branch":
                        var _jumpToBranch = ds_queue_dequeue(_args);
                        var _buttonText = string_replace_all(ds_queue_dequeue(_args), "_", " ");
                        ChatWindow.buttons[_buttonIndex].text = _buttonText;
                        ChatWindow.buttons[_buttonIndex].tempVal = _jumpToBranch;
                        ChatWindow.buttons[_buttonIndex].clickedScript = scr_ui_chat_button_branch;
                        ChatWindow.buttons[_buttonIndex].clickedAs = ChatWindow.buttons[_buttonIndex];
                        ChatWindow.buttons[_buttonIndex].isVisible = true;
                    break;
                    
                    case "#close":
                        var _buttonText = string_replace_all(ds_queue_dequeue(_args), "_", " ");
                        ChatWindow.buttons[_buttonIndex].text = _buttonText;
                        ChatWindow.buttons[_buttonIndex].clickedScript = scr_ui_button_chat_close;
                        ChatWindow.buttons[_buttonIndex].clickedAs = ChatWindow;
                        ChatWindow.buttons[_buttonIndex].isVisible = true;
                    break;
                    
                    case "#hide":
                        ChatWindow.buttons[_buttonIndex].isVisible = false;
                    break;
                }
            break;
        }
        ds_queue_destroy(_args);
    }
    else{
        ChatWindow.lines[_counter].text = _line;
        _counter += 1;
    }
}
