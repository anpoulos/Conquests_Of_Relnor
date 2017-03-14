///scr_lifeform_damage_create(x,y, obj_lifeform_damage, amount, source, destinationX, destinationY)

var _a = instance_create(argument0, argument1, argument2);
_a.amount = argument3;
_a.source = argument4;

_a.destinationX = round(argument5);
_a.destinationY = round(argument6);

if(_a.creationScript != noone){
    with(_a){
        script_execute(_a.creationScript);
    }
}

move_towards_point(_a.destinationX, _a.destinationY, _a.destinationSpeed);

return _a;
