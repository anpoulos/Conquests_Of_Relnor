///scr_damage_lifeform(lifeform, source, obj_damage)

if(!instance_exists(argument0)|| !instance_exists(argument1) || 
    !instance_exists(argument2)){
    return false;
}

var lifeform = argument0;
var source = argument1;
var damage = argument2;

if(lifeform == source){
    return false;
}

if( (lifeform.hitpoints - damage.amount) <= 0){
    lifeform.hitpoints = 0;
    lifeform.state = scr_lifeform_death_state;
}
else{
    lifeform.hitpoints -= damage.amount;
}

scr_lifeform_update_health_bar(lifeform);

var dir = point_direction(source.x,source.y,lifeform.x,lifeform.y);
var xForce = lengthdir_x(damage.knockback, dir);
var yForce = lengthdir_y(damage.knockback, dir);

with(lifeform){
    physics_apply_impulse(x,y, xForce, yForce);
}

damage.alarm[0] = 1;

