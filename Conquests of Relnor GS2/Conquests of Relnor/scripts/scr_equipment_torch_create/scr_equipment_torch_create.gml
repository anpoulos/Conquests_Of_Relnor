///@param owner
///@param isEquipped

var _torch = scr_equipment_offhand_create(spr_equipment_torch_icon, noone, obj_equipment_torch_parent, "Torch", 3, 5, 0, 1, 0, 0.01, argument0, STATS_TOOLS_BLUNTS, noone);

if(argument1){
	_torch.flame = instance_create(argument0.x, argument1.y, _torch.flameObject);
}

return _torch;