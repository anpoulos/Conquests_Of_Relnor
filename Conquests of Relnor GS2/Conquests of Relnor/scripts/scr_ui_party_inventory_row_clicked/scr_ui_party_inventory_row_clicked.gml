///clicked as button
///tempVal is the item related

var _item = tempVal;

var _player = instance_find(obj_player, 0);
_player.ItemInfoDrawObject.item = _item;

if(_item.useScript != noone){
	if(scr_lifeform_parent_inventory_is_equipped(_item.owner, _item)){
		_player.UseItemButton.text = "Unequip";
		_player.UseItemButton.clickedScript = _item.unequipScript;
		_player.UseItemButton.clickedAs = _item;
	}
	else{
		_player.UseItemButton.text = scr_item_get_use_type(_item.itemStats[ITEM_STATS_TYPE]);
		_player.UseItemButton.clickedScript = _item.useScript;
		_player.UseItemButton.clickedAs = _item;
	}
	_player.UseItemButton.isVisible = true;
}
else{
	_player.UseItemButton.isVisible = false;
}

if(!_player.InventoryInfoContainer.isVisible){
	_player.InventoryInfoContainer.isVisible = true;
}