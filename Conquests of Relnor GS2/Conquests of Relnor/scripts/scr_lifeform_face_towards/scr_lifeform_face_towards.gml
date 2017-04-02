///scr_lifeform_face_towards(obj_lifeform, desiredX, desiredY)
///@param lifeform
///@param desiredX
///@param desiredY

with(argument0){
    self.direction360 = point_direction(x, y, argument1,argument2);
    scr_lifeform_update_face();
}
