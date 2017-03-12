///scr_ui_chat_constructor(player, npc)

var _player = argument0;
var _npc = argument1;

with(_player){
    scr_player_enable_busy();
    var _chatWindow = instance_create(x,y,obj_ui_chat);
    
    _chatWindow.player = self;
    _chatWindow.npc = _npc;
    _chatWindow.NameText.text = string_replace_all(_npc.name, "_", " ")+":";
    _chatWindow.defaultNameText = _npc.name;
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
    
    scr_ui_chat_load_file(_fileName, _chatWindow);
    
    return _chatWindow;
}
