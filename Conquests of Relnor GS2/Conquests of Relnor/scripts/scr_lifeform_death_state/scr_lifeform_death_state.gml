///scr_lifeform_death_state()

var _body = instance_create(x,y,obj_lifeform_body);

_body.deadSprite = self.deadSprite;
_body.liveSprite = self.sprites[LEFT];
if(irandom(1) == 1){
	_body.liveSprite = self.sprites[RIGHT];
}

for(var i = 0; i < INVENTORY_MAX; i++){
	var _item = inventory[i];
	if(_item == noone){
		continue;
	}
	var _r = -1;//irandom(100)+1;
	var _radius = reach;
	var _itemDropPercentage = _item.itemStats[ITEM_STATS_DROP_PERCENTAGE]*100;
	if(_r <= _itemDropPercentage){
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
		_item.x = x + scr_misc_random_sign(_radius);
		_item.y = y + scr_misc_random_sign(_radius);
		_item.isVisible = true;
		_item.owner = noone;
		_item.spriteOffset = irandom(2);
	}
}

instance_destroy();
