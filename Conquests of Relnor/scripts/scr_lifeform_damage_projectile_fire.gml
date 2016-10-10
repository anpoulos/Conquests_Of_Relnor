///scr_lifeform_damage_projectile_fire(obj_damage_projectile)

with(argument0){
    var _forceX = destinationX-x;
    var _forceY = destinationY-y;
    alarm[11] = 30;
    physics_apply_impulse(x,y,_forceX, _forceY);
}
