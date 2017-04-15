/// @description Insert description here
// You can write your code in this editor

event_inherited();

if(!global.loadingInstances){
	var _treeTop = instance_create(x-1,y-14,obj_tree_top_01);

	_treeTop.depth = depth - 1;
}
