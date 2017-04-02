/// @description Collided Object Check
// You can write your code in this editor

if(lastCollidedObject == firstCollidedObject &&
point_distance(x,y,firstCollidedX,firstCollidedY) < size){
	state = scr_npc_choose_next_state;
}