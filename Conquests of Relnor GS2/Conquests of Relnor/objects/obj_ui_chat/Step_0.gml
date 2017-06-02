/// @description Insert description here
// You can write your code in this editor

if(npc != noone){
	speechBubble.isVisible = true;
	speechBubble.y = npc.y - npc.size;
	speechBubble.x = npc.x;
	speechBubble.depth = npc.depth - 1;
}
else{
	speechBubble.isVisible = false;
}

var _totalLines = scr_linked_list_size(lines);
for(var i = 0; i < _totalLines; i++){
	var _line = scr_linked_list_peak(lines);
	_line.scroll = true;
	if(_line.text != _line.fullText){
		break;
	}	
	scr_linked_list_get_next(lines);
}

