///@param objectSave

var _objectSave = argument0;

global.loadingInstances = true;
var _object = instance_create(_objectSave.x, _objectSave.y, _objectSave.objectIndex);
if(_objectSave.vaultId != -1){
	_object.vaultId = _objectSave.vaultId;
}
_object.keyId = _objectSave.keyId;
_object.isVisible = _objectSave.isVisible;
		
if(object_get_physics(_object)){
	_object.phy_active = _objectSave.phyActive;
}
		
		
_object.image_xscale = _objectSave.xScale;
_object.image_yscale = _objectSave.yScale;
_object.depth = _objectSave.objectDepth;
global.loadingInstances = false;

return _object;