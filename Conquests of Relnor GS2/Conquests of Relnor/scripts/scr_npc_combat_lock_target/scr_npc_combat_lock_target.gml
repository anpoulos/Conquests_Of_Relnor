///scr_npc_combat_lock_target(obj_npc, lockedTarget)
///@param obj_npc
///@param lockedTarget

var _npc = argument0;
var _destinedTarget = argument1;

if(instance_exists(_destinedTarget) && instance_exists(_npc)){
    if(_destinedTarget.allegiance != _npc.allegiance){
        _npc.lockedTarget = _destinedTarget;
        _npc.state = scr_npc_choose_next_state;
    }
}
