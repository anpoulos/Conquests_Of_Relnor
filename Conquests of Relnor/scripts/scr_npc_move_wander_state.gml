///scr_npc_move_wander_state

scr_lifeform_move_state();

if(instance_exists(self.target) || self.moveToX != noone || self.moveToY != noone){
    return true;
}

var _distanceFromOrigin = point_distance(originX, originY, self.x, self.y);
if(_distanceFromOrigin > wanderRadius){
    scr_lifeform_move_to(self, originX, originY, scr_npc_choose_next_state);
}
else{
    resetToOriginArea = false;
}
