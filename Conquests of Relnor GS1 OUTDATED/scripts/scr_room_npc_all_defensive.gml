///scr_room_npc_all_defensive(obj_npc)

for(var i = 0; i < instance_number(argument0); i++){
    var _obj = instance_find(argument0, i);
    _obj.isDefensive = true;
}
