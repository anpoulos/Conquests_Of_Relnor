///scr_lifeform_damage_create(x,y, obj_lifeform_damage, amount, source, destinationX, destinationY)

///@param x 0
///@param y 1
///@param obj_damage 2
///@param amount 3
///@param source 4
///@param destinationX 5
///@param destinationY 6

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

if(argument2 == obj_damage_range_projectile || object_is_ancestor(argument2, obj_damage_range_projectile)){
	var _face = round(point_direction(argument0, argument1, argument5, argument6)/45);
	if(_face > 7){
		_face = FACE_RIGHT;
	} 

    _a.sprite_index = _a.sprites[_face];
	scr_lifeform_damage_projectile_physical_fire(_a);
}

return _a;
