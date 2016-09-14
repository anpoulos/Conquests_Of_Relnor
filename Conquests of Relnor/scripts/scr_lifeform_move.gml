///scr_lifeform_move(lifeform, offsetX, offsetY)

if(!instance_exists(argument0) || !instance_exists(argument1) || !instance_exists(argument2)){
    return false;
}

var lifeform = argument0;
var offsetX = argument1;
var offsetY = argument2;

//Move
scr_obj_move(lifeform, offsetX, offsetY);

//Control the sprite
lifeform.image_speed = sign(lifeform.length) * lifeform.imageSpeed;
if(lifeform.length == 0) lifeform.image_index = 0;

switch(lifeform.face){
    case RIGHT:
        lifeform.sprite_index = lifeform.sprites[RIGHT];
    break;
    case LEFT:
        lifeform.sprite_index = lifeform.sprites[LEFT];
    break;
    case UP:
        lifeform.sprite_index = lifeform.sprites[UP];
    break;
    case DOWN:
        lifeform.sprite_index = lifeform.sprites[DOWN];   
    break;
}
