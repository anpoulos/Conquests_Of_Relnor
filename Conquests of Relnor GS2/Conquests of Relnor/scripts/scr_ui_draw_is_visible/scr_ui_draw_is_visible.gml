///@param obj_ui_draw

var _uiObject = argument0;

var _parentObject = _uiObject.menuContainer;

if(_parentObject == noone || !_uiObject.isVisible){
	return _uiObject.isVisible;
}

while(true){
	if(_parentObject.menuContainer == noone){
		break;
	}
	else{
		if(!_parentObject.isVisible){
			return false;
		}
		_parentObject = _parentObject.menuContainer;
	}
}

return _parentObject.isVisible;

