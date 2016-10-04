///scr_player_commands_talk_to_closest_selected

var _selected = commandModule.selected;
var _closestNPC = noone;
var _closestNPCDistance = 10000;

for(var i = 0; i < scr_linked_list_size(_selected); i++){
    var _currentNPC = scr_linked_list_get_next(_selected);
    
    var _direction360RelativeToMe = point_direction(x,y,_currentNPC.x, _currentNPC.y);
    var _direction4WayRelativeToMe = round(_direction360RelativeToMe/4);
    if(_direction4WayRelativeToMe > 3){
        _direction4WayRelativeToMe = RIGHT;
    }
    
    if(_direction4WayRelativeToMe == face4Way){
        var _distanceToMe = point_distance(x,y, _currentNPC.x, _currentNPC.y);
        if(_distanceToMe < _closestNPCDistance && _distanceToMe <= reach){
            _closestNPC = _currentNPC;
            _closestNPCDistance = _distanceToMe;
        }
    }    
}

if(_closestNPC != noone){
    ChatWindow = instance_create(x,y,obj_ui_chat);
    ChatWindow.lines[0].text = "Line0";
    ChatWindow.lines[1].text = "Line1";
    ChatWindow.lines[2].text = "Line2";
    ChatWindow.lines[3].text = "Line3";    
}
else{
//No npcs close enough selected to talk to
}




