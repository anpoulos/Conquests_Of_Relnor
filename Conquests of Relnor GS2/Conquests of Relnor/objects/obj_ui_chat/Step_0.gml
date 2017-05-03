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