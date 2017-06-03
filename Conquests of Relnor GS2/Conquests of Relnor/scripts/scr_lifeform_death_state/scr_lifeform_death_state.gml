///scr_lifeform_death_state()

if(gold > 0){
	var _gold = instance_create(x,y, obj_inventory_item_gold_parent);

	_gold.itemStats[ITEM_STATS_VALUE] = gold;
}

for(var i = 0; i < INVENTORY_MAX; i++){
	var _item = inventory[i];
	if(_item == noone){
		continue;
	}
	var _radius = reach;
	var _r = floor(100 - _item.itemStats[ITEM_STATS_DROP_PERCENTAGE]*100);
	if(irandom(_r) == 0){
	
		if(_item.object_index == obj_equipment_torch_parent || object_is_ancestor(_item.object_index, obj_equipment_torch_parent)){
			if(_item.flame != noone && instance_exists(_item.flame)){
				instance_destroy(_item.flame);
				_item.flame = noone; 
			}
		}
		
		_item.x = x + scr_misc_random_sign(_radius);
		_item.y = y + scr_misc_random_sign(_radius);
		_item.isVisible = true;
		_item.owner = noone;
		_item.spriteOffset = irandom(2);
	}
}

for(var i = 0; i < EQUIPMENT_TYPE_MAX; i++){
	var _item = equipment[i];
	if(_item == noone){
		continue;
	}
	var _r = -1;//irandom(100)+1;
	var _radius = reach;
	var _itemDropPercentage = _item.itemStats[ITEM_STATS_DROP_PERCENTAGE]*100;
	if(_r <= _itemDropPercentage){
	
		if(_item.object_index == obj_equipment_torch_parent || object_is_ancestor(_item.object_index, obj_equipment_torch_parent)){
			if(_item.flame != noone && instance_exists(_item.flame)){
				instance_destroy(_item.flame);
				_item.flame = noone; 
			}
		}
		
		_item.x = x + scr_misc_random_sign(_radius);
		_item.y = y + scr_misc_random_sign(_radius);
		_item.isVisible = true;
		_item.owner = noone;
		_item.spriteOffset = irandom(2);
	}
}

deathTimer = room_speed*irandom(10) + room_speed*10;

state = scr_npc_idle_death_state;

scr_npc_create_body(self);
