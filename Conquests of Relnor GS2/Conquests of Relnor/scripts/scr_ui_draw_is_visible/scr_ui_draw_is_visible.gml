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
		_parentObject = _parentObject.menuContainer;
		if(!_parentObject.isVisible){
			return false;
		}
	}
}

return _parentObject.isVisible;

