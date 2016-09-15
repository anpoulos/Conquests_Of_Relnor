///scr_create_obj_array(size)
var _a = instance_create(0,0,obj_array);
_a.size = argument0;
_a.item[_a.size] = noone;

for(var i = _a.size; i >= 0; i--){
    _a.item[i] = noone;
}

return _a;
