///scr_player_commands_talk_to_closest_selected

var _selected = commandModule.selected;
var _closestNPC = noone;
var _closestNPCDistance = 10000;
var _talkReach = reach*2;

for(var i = 0; i < scr_linked_list_size(_selected); i++){
    var _currentNPC = scr_linked_list_get_next(_selected);
    
    var _direction360RelativeToMe = point_direction(x,y,_currentNPC.x, _currentNPC.y);
    var _direction4WayRelativeToMe = round(_direction360RelativeToMe/90);
    if(_direction4WayRelativeToMe > 3){
        _direction4WayRelativeToMe = RIGHT;
    }
    
    if(_direction4WayRelativeToMe == face4Way){
        var _distanceToMe = point_distance(x,y, _currentNPC.x, _currentNPC.y);
        if(_distanceToMe < _closestNPCDistance && _distanceToMe <= _talkReach){
            _closestNPC = _currentNPC;
            _closestNPCDistance = _distanceToMe;
        }
    }    
}

if(_closestNPC != noone){
    ChatWindow = scr_ui_chat_constructor(self, _closestNPC, noone, noone);
    scr_linked_list_add(Menus, ChatWindow.ChatContainer);
}
else{
//No npcs close enough selected to talk to
}




