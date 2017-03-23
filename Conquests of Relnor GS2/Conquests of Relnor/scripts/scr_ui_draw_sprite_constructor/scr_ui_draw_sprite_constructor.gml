///@param x
///@param y
///@param sprite
///@param spriteIndex
///@param menuContainer

var _drawSprite = instance_create(argument0, argument1, obj_ui_draw_sprite);
_drawSprite.sprite = argument2;
_drawSprite.spriteIndex = argument3;

if(argument4 != noone){
    scr_ui_menu_container_add_draw_object(_drawSprite, argument4);
}

return _drawSprite;