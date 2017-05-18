///scr_room_npc_all_engage(obj_npc, sight)
///@param obj_npc
///@param sight

for(var i = 0; i < instance_number(argument0); i++){
    var _obj = instance_find(argument0, i);
    _obj.isAggressive = true;
    _obj.sight = argument1;
	_obj.engageDistance = _obj.sight;
}
