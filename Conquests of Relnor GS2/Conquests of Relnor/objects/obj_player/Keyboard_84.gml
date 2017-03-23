///T Pressed

if(isBusy){
	return false;
}

var _closestItem = noone;
var _closestDistance = reach*2;
for(var i = 0; i < instance_number(obj_inventory_item_parent); i++){
	var _item = instance_find(obj_inventory_item_parent, i);
	if(!_item.isVisible){
		continue;
	}
	var _distance = point_distance(x,y,_item.x,_item.y);
	if(_distance <= reach){
		if(_distance < _closestDistance){
			_closestDistance = _distance;
			_closestItem = _item;
		}
	}
}
if(_closestItem != noone){
	if(scr_lifeform_parent_inventory_get_free_space(self) > 0){
		scr_lifeform_parent_inventory_add(self, _closestItem);
		_closestItem.isVisible = false;
		return true;
	}
}


for(i = 0; i < instance_number(obj_map_door_invisible); i++){
    var _doorInvisible = instance_find(obj_map_door_invisible, i);
    if( (x <= _doorInvisible.rightX && x >= _doorInvisible.leftX) && 
        (y <= _doorInvisible.bottomY && y >= _doorInvisible.topY) ){
            _doorInvisible.player = self;
            with(_doorInvisible){
                script_execute(doorOpenedScript);
				return true;
            }
    }
}


if(scr_player_talk_to_closest()){
	return true;
}
