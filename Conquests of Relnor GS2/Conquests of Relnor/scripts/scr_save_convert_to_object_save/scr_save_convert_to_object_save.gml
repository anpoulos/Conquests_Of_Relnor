///@param object

var _object = argument0;

var _objectSave = instance_create(_object.x, _object.y, obj_map_object_save);
	
_objectSave.objectIndex = _object.object_index;
_objectSave.xScale = _object.image_xscale;
_objectSave.yScale = _object.image_yscale;
_objectSave.objectDepth = _object.depth;
_objectSave.bboxBottom = _object.bbox_bottom;
_objectSave.bboxLeft = _object.bbox_left;
_objectSave.bboxRight = _object.bbox_right;
_objectSave.bboxTop = _object.bbox_top;
_objectSave.isVisible = _object.isVisible;

if(object_get_physics(_object)){
	_objectSave.phyActive = _object.phy_active;
}
	
if(object_is_ancestor(_object.object_index, obj_chest_parent)){
	_objectSave.vaultId = _object.vaultId;
}
	
_objectSave.keyId = _object.keyId;

return _objectSave;