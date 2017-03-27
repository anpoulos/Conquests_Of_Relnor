///@param owner
///@param isEquipped

var _torch = scr_equipment_create(0,0,obj_equipment_torch_parent, "Torch", 2, 15, 0, 1,0,0.75,argument0);

if(argument1){
	_torch.flame = instance_create(argument0.x, argument1.y, obj_map_light_torch_flame);
}

return _torch;