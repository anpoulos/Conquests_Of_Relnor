///scr_ui_chat_load_branch(branchIndex)

var _branchIndex = argument0;

var _list = ChatWindow.branches[_branchIndex];

ChatWindow.currentBranch = _branchIndex;

var _player = instance_find(obj_player, 0);

while(scr_linked_list_size(ChatWindow.lines) != 0){
	var _tempLine = scr_linked_list_remove_next(ChatWindow.lines);
	_tempLine.isVisible = false;
    instance_destroy(_tempLine);
}

while(scr_linked_list_size(ChatWindow.buttons) != 0){
	var _tempButton = scr_linked_list_remove_next(ChatWindow.buttons);
	_tempButton.isVisible = false;
    instance_destroy(_tempButton);
}


var _listSize = scr_linked_list_size(_list);
for(var i = 0; i < _listSize; i++){
    var _line = scr_linked_list_get_next(_list);
    
    if(string_length(_line) == 0){
        continue;
    }    
    
    if(string_char_at(_line, 0) == "#"){
        var _args = scr_string_split(_line, " ");
        var _arg0 = ds_queue_dequeue(_args);
        
        switch(_arg0){
		
			case "#set":
				ds_queue_dequeue(_args);
				var _questIndex = real(ds_queue_dequeue(_args));
				var _newValue = real(ds_queue_dequeue(_args));
				_player.quest[_questIndex] = _newValue;
			break;
		
			case "#if":
				var _variableName = ds_queue_dequeue(_args);
				
				var _variable = noone;
				
				switch(_variableName){
					case "#quest":
						var _questIndex = real(ds_queue_dequeue(_args));
						_variable = _player.quest[_questIndex];
					break;
					
					case "#balance":
						_variable = _player.balance;
					break;
				}
				
				var _comparator = ds_queue_dequeue(_args);
				var _value = real(ds_queue_dequeue(_args));
				
				var _failedCondition = false;
				switch(_comparator){
					case "less":
						_failedCondition = (_variable >= _value);
					break;
					
					case "greater":
						_failedCondition = (_variable <= _value);
					break;
				}
				
				if(_failedCondition){
					do{
						_listSize -= 1;
						var _nextLine = scr_linked_list_get_next(_list);
						var _nextLineArgs = scr_string_split(_nextLine, " ");
						var _nextLineArg0 = ds_queue_dequeue(_nextLineArgs);
						var _endVariableName = "";
						if(_nextLineArg0 == "#endif"){
							_endVariableName = ds_queue_dequeue(_nextLineArgs);
						}
					}
					until( _endVariableName == _variableName);
					
				}
			break;
		
			case "#script":
				var _scriptIndex = ds_queue_dequeue(_args);
				script_execute(ChatWindow.scripts[_scriptIndex]);
			break;
		
            case "#title":
                var _rawText = ds_queue_dequeue(_args);
                ChatWindow.NameText.text = scr_ui_chat_get_text(_rawText);
            break;
        
            case "#button":
                var _buttonCommand = ds_queue_dequeue(_args);
                
				//Create button
					var _buttonColor = make_colour_rgb(100,100,100);
					var _buttonColorPressed = make_colour_rgb(50,50,50);
					var _buttonColorArray = scr_create_obj_array4_repeat(_buttonColor, "_buttonColorArray");
					
					var _buttonPosArray = scr_create_obj_array4(-70,-20,70,20, "_buttonPosArray");
					
					var _buttonX = ChatWindow.ChatContainer.rightX - _buttonPosArray.item[2] - 10;
					
					var _offsetY = (scr_linked_list_size(ChatWindow.buttons) == 0) ? 
						ChatWindow.ChatContainer.topY : scr_linked_list_peak_last(ChatWindow.buttons).bottomY;
					
					var _buttonY = _offsetY + _buttonPosArray.item[3] + 10;
					
					var _buttonInfo = scr_ui_get_obj_ui_button_information(5, noone, noone, "", 
                        fnt_default_medium, c_white, 1.0, 0.5);
						
					var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, _buttonColorArray, _buttonColorPressed,
                                true, _buttonInfo, ChatWindow.ChatContainer);
	
					scr_destroy_instance(_buttonColorArray);
					scr_destroy_instance(_buttonPosArray);
					scr_destroy_instance(_buttonInfo);
					
					scr_linked_list_add(ChatWindow.buttons, _button);
				//End of create button
				
                switch(_buttonCommand){
                    case "#branch":
                        var _jumpToBranch = ds_queue_dequeue(_args);
		                var _rawText = ds_queue_dequeue(_args);
		                var _buttonText = scr_ui_chat_get_text(_rawText);
                        _button.text = _buttonText;
                        _button.tempVal = _jumpToBranch;
                        _button.clickedScript = scr_ui_chat_button_branch;
                        _button.clickedAs = _button;
                        _button.isVisible = true;
                    break;
					
					case "#script":
						var _scriptIndex = ds_queue_dequeue(_args);
		                var _rawText = ds_queue_dequeue(_args);
		                var _buttonText = scr_ui_chat_get_text(_rawText);
                        _button.text = _buttonText;
                        _button.tempVal = _scriptIndex;
                        _button.clickedScript = scr_ui_chat_button_ex_script;
                        _button.clickedAs = _button;
                        _button.isVisible = true;
					break;
                    
                    case "#close":
		                var _rawText = ds_queue_dequeue(_args);
		                var _buttonText = scr_ui_chat_get_text(_rawText);
                        _button.text = _buttonText;
                        _button.clickedScript = scr_ui_button_chat_close;
                        _button.clickedAs = ChatWindow;
                        _button.isVisible = true;
                    break;
					
					case "#shop":
		                var _rawText = ds_queue_dequeue(_args);
		                var _buttonText = scr_ui_chat_get_text(_rawText);
                        _button.text = _buttonText;
                        _button.clickedScript = scr_ui_chat_button_shop;
                        _button.clickedAs = ChatWindow.npc;
                        _button.isVisible = true;
					break;
                    
                    case "#hide":
                        _button.isVisible = false;
                    break;
                }
            break;
        }
        ds_queue_destroy(_args);
    }
    else{
	//Create Text
		var _textOffset = 25;
		var _textX = ChatWindow.ChatContainer.leftX + 35;
		var _offsetY = (scr_linked_list_size(ChatWindow.lines) == 0) ?
			ChatWindow.NameText.y : scr_linked_list_peak_last(ChatWindow.lines).y;
		var _textY = _offsetY + 35;	
		
		var _lineText = scr_ui_chat_get_text(_line);
		
		var _lineObject = scr_ui_font_constructor(_textX, _textY, _lineText, fnt_default_medium, c_white, 
		    1.0, fa_left, fa_middle, ChatWindow.ChatContainer);
		_lineObject.isVisible = true;
		
		scr_linked_list_add(ChatWindow.lines, _lineObject);
	//End of Create Text
    }
}

var _dHeight = max(scr_linked_list_size(ChatWindow.lines)*45+25, scr_linked_list_size(ChatWindow.buttons)*55);
ChatWindow.ChatContainer.bottomY = ChatWindow.ChatContainer.topY + _dHeight;

