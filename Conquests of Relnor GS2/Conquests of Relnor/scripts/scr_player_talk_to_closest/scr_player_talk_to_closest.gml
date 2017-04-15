///scr_player_talk_to_closest

var _selected = commandModule.selected;
var _closestNPC = noone;
var _closestNPCDistance = 10000;
var _talkReach = size*2;

for(var i = 0; i < instance_number(obj_npc_Parent); i++){
    var _currentNPC = instance_find(obj_npc_Parent, i);
    
    if(_currentNPC.hasDialogue && scr_lifeform_is_facing(_currentNPC)){
        var _distanceToMe = point_distance(x,y, _currentNPC.x, _currentNPC.y);
        if(_distanceToMe < _closestNPCDistance && _distanceToMe <= _talkReach){
            _closestNPC = _currentNPC;
            _closestNPCDistance = _distanceToMe;
        }
    }    
}

if(_closestNPC != noone){
    ChatWindow = scr_ui_chat_constructor(self, _closestNPC);
    scr_ui_open_chat(ChatWindow);
    return true;
}

return false;




