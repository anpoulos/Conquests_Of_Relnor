///@param width
///@param height

var _width = argument0;
var _height = argument1;

var _halfWidth = round(_width/2);
var _halfHeight = round(_height/2);
    
var _menuPosArray = scr_create_obj_array4(-_halfWidth, -_halfHeight, 
                                        _halfWidth, _halfHeight, "_menuPosArray");
										
return _menuPosArray;