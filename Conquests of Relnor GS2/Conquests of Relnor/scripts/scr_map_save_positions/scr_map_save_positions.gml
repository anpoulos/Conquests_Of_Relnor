
if(global.currentRoom == -1){
	return false;
}

if(instance_number(obj_map_solid_parent) > 0){
	global.mapSaves.objectList[global.currentRoom] = scr_linked_list_create();
}
//global.mapSaves.lifeformList[global.currentRoom] = scr_linked_list_create();

for(var i = 0; i < instance_number(obj_map_solid_parent); i++){
	var _object = instance_find(obj_map_solid_parent, i);
	var _objectSave = instance_create(_object.x, _object.y, obj_map_object_save);
	_objectSave.objectIndex = _object.object_index;
	_objectSave.xScale = _object.image_xscale;
	_objectSave.yScale = _object.image_yscale;
	_objectSave.objectDepth = _object.depth;
	_objectSave.bboxBottom = _object.bbox_bottom;
	_objectSave.bboxLeft = _object.bbox_left;
	_objectSave.bboxRight = _object.bbox_right;
	_objectSave.bboxTop = _object.bbox_top;
	
	scr_linked_list_add(global.mapSaves.objectList[global.currentRoom], _objectSave);
}