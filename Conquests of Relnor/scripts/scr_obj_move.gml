///scr_obj_move(object, phy_offsetX, phy_offsetY)

if( !instance_exists(argument0) ){
 return false;
 }

argument0.phy_position_x += argument1;
argument0.phy_position_y += argument2;

