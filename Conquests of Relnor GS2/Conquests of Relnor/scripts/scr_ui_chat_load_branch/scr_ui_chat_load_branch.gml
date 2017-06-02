///scr_ui_chat_load_branch(branchIndex)

///@param obj_chat_window
///@param branchIndex

var _chatWindow = argument0;
var _branchIndex = argument1;

var _list = _chatWindow.branches[_branchIndex];

_chatWindow.currentBranch = _branchIndex;

var _player = instance_find(obj_player, 0);

while(scr_linked_list_size(_chatWindow.lines) != 0){
	var _tempLine = scr_linked_list_remove_next(_chatWindow.lines);
	_tempLine.isVisible = false;
    instance_destroy(_tempLine);
}

while(scr_linked_list_size(_chatWindow.buttons) != 0){
	var _tempButton = scr_linked_list_remove_next(_chatWindow.buttons);
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
		
			case "#add":
				var _variableName = ds_queue_dequeue(_args);
				switch(_variableName){
					case "#quest":
						var _questIndex = real(ds_queue_dequeue(_args));
						var _value = real(ds_queue_dequeue(_args));
						_player.quest[_questIndex] += _value;
					break;
					case "#balance":
						var _value = real(ds_queue_dequeue(_args));
						_player.balance += _value;
					break;
				}
			break;
		
			case "#set":
				var _variableName = ds_queue_dequeue(_args);
				switch(_variableName){
					case "#quest":
						var _questIndex = real(ds_queue_dequeue(_args));
						var _newValue = real(ds_queue_dequeue(_args));
						_player.quest[_questIndex] = _newValue;
					break;
					case "#balance":
						var _newValue = real(ds_queue_dequeue(_args));
						_player.balance = _newValue;
					break;
					case "#npc":
						var _rawTextName = ds_queue_dequeue(_args);
						if(_rawTextName == "#player"){
							_chatWindow.npc = global.player;
						}
						else if(_rawTextName == "#default"){
							_chatWindow.npc = _chatWindow.originalNpc;
						}
						else{
							var _name = scr_ui_chat_get_text(_chatWindow, _rawTextName);
							var _totalNpcs = instance_number(obj_npc_Parent);
							var _foundNpc = false;
							for(var n = 0; n < _totalNpcs && !_foundNpc; n++){
								var _npc = instance_find(obj_npc_Parent, n);
							
								if(scr_lifeform_get_full_name(_npc) == _name){
									_chatWindow.npc = _npc;
									_foundNpc = true;
								}
							}
						}						
					break;
				}
			break;
		
			case "#if":
				var _ifId = ds_queue_dequeue(_args);
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
						var _endIfId = "";
						if(_nextLineArg0 == "#endif"){
							_endIfId = ds_queue_dequeue(_nextLineArgs);
						}
						ds_queue_destroy(_nextLineArgs);
					}
					until( _endIfId == _ifId);
				}
			break;
		
			case "#script":
				var _scriptIndex = ds_queue_dequeue(_args);
				script_execute(_chatWindow.scripts[_scriptIndex]);
			break;
		
            case "#title":
                var _rawText = ds_queue_dequeue(_args);
                _chatWindow.NameText.text = scr_ui_chat_get_text(_chatWindow, _rawText);
            break;
        
            case "#button":
                var _buttonCommand = ds_queue_dequeue(_args);
                
				//Create button
					var _buttonColor = make_colour_rgb(100,100,100);
					var _buttonColorPressed = make_colour_rgb(50,50,50);
					var _buttonColorArray = scr_create_obj_array4_repeat(_buttonColor, "_buttonColorArray");
					
					var _buttonPosArray = scr_create_obj_array4(-70,-20,70,20, "_buttonPosArray");
					
					var _buttonX = _chatWindow.ChatContainer.rightX - _buttonPosArray.item[2] - 10;
					
					var _offsetY = (scr_linked_list_size(_chatWindow.buttons) == 0) ? 
						_chatWindow.ChatContainer.topY : scr_linked_list_peak_last(_chatWindow.buttons).bottomY;
					
					var _buttonY = _offsetY + _buttonPosArray.item[3] + 10;
					
					var _buttonInfo = scr_ui_get_obj_ui_button_information(5, noone, noone, "", 
                        fnt_default_medium, c_white, 1.0, 0.5);
						
					var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, _buttonColorArray, _buttonColorPressed,
                                true, _buttonInfo, _chatWindow.ChatContainer);
	
					scr_destroy_instance(_buttonColorArray);
					scr_destroy_instance(_buttonPosArray);
					scr_destroy_instance(_buttonInfo);
					
					scr_linked_list_add(_chatWindow.buttons, _button);
				//End of create button
				
                switch(_buttonCommand){
                    case "#branch":
                        var _jumpToBranch = ds_queue_dequeue(_args);
		                var _rawText = ds_queue_dequeue(_args);
		                var _buttonText = scr_ui_chat_get_text(_chatWindow, _rawText);
                        _button.text = _buttonText;
                        _button.tempVal = _jumpToBranch;
                        _button.clickedScript = scr_ui_chat_button_branch;
                        _button.clickedAs = _chatWindow;
                        _button.isVisible = true;
                    break;
					
					case "#script":
						var _scriptIndex = ds_queue_dequeue(_args);
		                var _rawText = ds_queue_dequeue(_args);
		                var _buttonText = scr_ui_chat_get_text(_chatWindow, _rawText);
                        _button.text = _buttonText;
                        _button.tempVal = _scriptIndex;
                        _button.clickedScript = scr_ui_chat_button_ex_script;
                        _button.clickedAs = _chatWindow;
                        _button.isVisible = true;
					break;
                    
                    case "#close":
		                var _rawText = ds_queue_dequeue(_args);
		                var _buttonText = scr_ui_chat_get_text(_chatWindow, _rawText);
                        _button.text = _buttonText;
                        _button.clickedScript = scr_ui_button_chat_close;
                        _button.clickedAs = _chatWindow;
                        _button.isVisible = true;
                    break;
					
					case "#shop":
		                var _rawText = ds_queue_dequeue(_args);
		                var _buttonText = scr_ui_chat_get_text(_chatWindow, _rawText);
                        _button.text = _buttonText;
                        _button.clickedScript = scr_ui_chat_button_shop;
                        _button.clickedAs = _chatWindow;
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
		var _textX = _chatWindow.ChatContainer.leftX + 35;
		var _offsetY = (scr_linked_list_size(_chatWindow.lines) == 0) ?
			_chatWindow.NameText.y : scr_linked_list_peak_last(_chatWindow.lines).y;
		var _textY = _offsetY + 35;	
		
		var _lineText = scr_ui_chat_get_text(_chatWindow, _line);
		
		var _lineObject = scr_ui_font_constructor(_textX, _textY, _lineText, fnt_default_medium, c_white, 
		    1.0, fa_left, fa_middle, _chatWindow.ChatContainer);
		_lineObject.isVisible = true;
		
		_lineObject.text = "";
		
		scr_linked_list_add(_chatWindow.lines, _lineObject);
	//End of Create Text
    }
}

var _dHeight = max(scr_linked_list_size(_chatWindow.lines)*45+25, scr_linked_list_size(_chatWindow.buttons)*55);
_chatWindow.ChatContainer.bottomY = _chatWindow.ChatContainer.topY + _dHeight;

