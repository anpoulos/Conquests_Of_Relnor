///@param equipment
///@param x
///@param y
///@param xScale
///@param yScale
///@param rotation
///@param color
///@param alpha

var _equipment = argument0;

if(_equipment != noone && _equipment.isVisibleWhenEquipped){
	draw_sprite_ext(_equipment.sprite[face4Way], image_index, argument1, argument2, argument3, argument4, argument5, argument6, argument7);
}