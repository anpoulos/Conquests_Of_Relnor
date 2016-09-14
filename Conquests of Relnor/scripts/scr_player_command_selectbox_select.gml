///scr_obj_selectbox_select

//collision_rectangle(originalX, originalY, mouse_x, mouse_y, obj_Lifeform_Parent, false, true);
self.creator.stillSelecting = true;
var _leftX = 0;
var _rightX = 0;
var _topY = 0;
var _bottomY = 0;

if(originalX >= mouse_x){
_rightX = originalX;
_leftX = mouse_x;
}
if(originalY <= mouse_y){
_bottomY = mouse_y;
_topY = originalY;
}
if(mouse_x > originalX){
_rightX = mouse_x;
_leftX = originalX;
}
if(mouse_y < originalY){
_topY = mouse_y;
_bottomY = originalY;
}

    for(var j = 0; j < instance_number(obj_Lifeform_Parent); j++){
        var _objectType = instance_find(obj_Lifeform_Parent, j);
        
        var _isInSelect = point_in_rectangle(_objectType.x, _objectType.y, _leftX, _topY, _rightX, _bottomY);        
        if(!_isInSelect){
        _isInSelect = point_in_rectangle(_objectType.x, _objectType.y, mouse_x, mouse_y, originalX, originalY);
        }
        
        if(_isInSelect && _objectType != self.creator){
            script_execute(self.selectScript, self.creator, _objectType);
        }
    }
