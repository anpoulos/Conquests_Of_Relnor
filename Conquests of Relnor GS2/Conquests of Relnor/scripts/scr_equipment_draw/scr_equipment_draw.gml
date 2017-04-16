///@param equipment

var _equipment = argument0;

if(_equipment != noone && _equipment.isVisibleWhenEquipped){
	draw_sprite(_equipment.sprite[face4Way], image_index, x,y);
}