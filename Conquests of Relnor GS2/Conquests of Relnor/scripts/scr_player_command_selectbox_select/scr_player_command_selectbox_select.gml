///scr_obj_selectbox_select

self.creator.stillSelecting = true;
var _leftX = 0;
var _rightX = 0;
var _topY = 0;
var _bottomY = 0;

var _mouseX = global.player.virtualMouse == noone ? mouse_x : global.player.virtualMouse.mouseX;
var _mouseY = global.player.virtualMouse == noone ? mouse_y : global.player.virtualMouse.mouseY;

if(originalX >= _mouseX){
_rightX = originalX;
_leftX = _mouseX;
}
if(originalY <= _mouseY){
_bottomY = _mouseY;
_topY = originalY;
}
if(_mouseX > originalX){
_rightX = _mouseX;
_leftX = originalX;
}
if(_mouseY < originalY){
_topY = _mouseY;
_bottomY = originalY;
}

    for(var j = 0; j < instance_number(obj_Lifeform_Parent); j++){
        var _objectType = instance_find(obj_Lifeform_Parent, j);
        
        var _isInSelect = point_in_rectangle(_objectType.x, _objectType.y, _leftX, _topY, _rightX, _bottomY);        
        if(!_isInSelect){
			_isInSelect = point_in_rectangle(_objectType.x, _objectType.y, _mouseX, _mouseY, originalX, originalY);
        }
        
        if(_isInSelect && _objectType != self.creator){
            script_execute(self.selectScript, self.creator, _objectType);
        }
    }
