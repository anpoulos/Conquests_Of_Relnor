///scr_ui_chat_constructor(player, npc)

///@param player
///@param npc
///@param rootDirectoryName
///@param customChatFileName

var _player = argument0;
var _npc = argument1;
var _rootDirectory = argument2;
var _customChatFileName = argument3;

var _fileName = _rootDirectory+"/";

var _chatWindow = instance_create(x,y,obj_ui_chat);
	
if(_player != noone){
	scr_player_enable_busy();
}

_chatWindow.player = _player;
_chatWindow.npc = _npc;
_chatWindow.originalNpc = _npc;

if(_npc != noone){
	_chatWindow.NameText.text = _npc.name+" :";
	with(_npc){
	    scr_npc_enable_busy();
	}
	
	if(_player != noone){
		scr_lifeform_face_towards(_npc, _player.x,_player.y);
	}
	
	_fileName += "File_Chat_" + string_replace_all(scr_lifeform_get_full_name(_npc), " ", "_") + ".txt";
    
}
else{
	_fileName += _customChatFileName + ".txt";
}
	
if(!scr_ui_chat_load_file(_fileName, _chatWindow)){
	instance_destroy(_chatWindow);
	return noone;
}
    
return _chatWindow;
