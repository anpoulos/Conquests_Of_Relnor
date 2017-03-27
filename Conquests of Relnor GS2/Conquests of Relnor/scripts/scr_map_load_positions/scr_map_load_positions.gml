
if(global.currentRoom == -1){
	return false;
}

if(global.mapSaves.lifeformList[global.currentRoom] != noone){

}

if(global.mapSaves.objectList[global.currentRoom] != noone){

	var _objectList = global.mapSaves.objectList[global.currentRoom];
	while(scr_linked_list_size(_objectList) != 0){
		var _objectSave = scr_linked_list_remove_next(_objectList);
		global.loadingInstances = true;
		var _object = instance_create(_objectSave.x, _objectSave.y, _objectSave.objectIndex);
		_object.image_xscale = _objectSave.xScale;
		_object.image_yscale = _objectSave.yScale;
		_object.depth = _objectSave.objectDepth;
		//_object.bbox_bottom = _objectSave.bboxBottom;
		//_object.bbox_left = _objectSave.bboxLeft;
		//_object.bbox_right = _objectSave.bboxRight;
		// _object.bbox_top = _objectSave.bboxTop;
		global.loadingInstances = false;
		instance_destroy(_objectSave);
	}
	
}

