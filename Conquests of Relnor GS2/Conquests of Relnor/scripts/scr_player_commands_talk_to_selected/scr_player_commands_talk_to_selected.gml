///scr_player_commands_talk_to_selected
///Used as player

var _totalSelected = scr_linked_list_size(commandModule.selected);


var _closestDistance = MAX;
var _closestSelected = noone;
for(var i = 0 ; i < _totalSelected; i++){
	var _selected = scr_linked_list_get_next(commandModule.selected);
	
	var _distance = point_distance(x,y,_selected.x,_selected.y);
	if(_distance < size*2 && _distance < _closestDistance){
		_closestSelected = _selected;
		_closestDistance = _distance;
	}
}

if(_closestSelected != noone){
	scr_lifeform_face_towards(self, _closestSelected.x, _closestSelected.y);
    ChatWindow = scr_ui_chat_constructor(self, _closestSelected, "Chat", noone);
    scr_ui_open_chat(ChatWindow);
}

