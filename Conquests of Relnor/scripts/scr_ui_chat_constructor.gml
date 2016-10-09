///scr_ui_chat_constructor(player, npc, endScript, endScriptAs)

var _player = argument0;
var _npc = argument1;

with(_player){
    scr_player_enable_busy();
    var _chatWindow = instance_create(x,y,obj_ui_chat);
    _chatWindow.endScript = argument2;
    _chatWindow.endScriptAs = argument3;
    
    _chatWindow.player = self;
    _chatWindow.npc = _npc;
    _chatWindow.NameText.text = _npc.name+":";
    with(_npc){
        scr_npc_enable_busy();
    }
    scr_lifeform_face_towards(_npc, x,y);
    
    var _fileName = "Chat/File_Chat_"+_npc.name;
    
    if(string_length(_npc.nameIdentifier) > 0){
        _fileName = _fileName+"_"+_npc.nameIdentifier+".txt";
    }
    else{
        _fileName = _fileName + ".txt";
    }
    
    var _file = file_text_open_read(_fileName);
    
    var _counter = 0;
    while(!file_text_eoln(_file)){
        var _line = file_text_read_string(_file);
        if(_counter > 3){
            scr_linked_list_add(_chatWindow.allLines, _line); //add to buffer
        }
        else{
            _chatWindow.lines[_counter].text = _line;
            _counter += 1;
        }        
        file_text_readln(_file);
    }
    file_text_close(_file);
    
    return _chatWindow;
}
