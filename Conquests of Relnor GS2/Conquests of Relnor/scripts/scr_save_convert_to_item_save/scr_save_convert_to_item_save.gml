///@param item

var _item = argument0;

var _itemSave = instance_create(_item.x, _item.y, obj_map_item_save);

for(var i = 0; i < ITEM_STATS_MAX; i++){
	_itemSave.itemStats[i] = _item.itemStats[i];
}

_itemSave.useScript = _item.useScript;
_itemSave.dropScript = _item.dropScript;
_itemSave.icon = _item.icon;

_itemSave.groundSprite = _item.groundSprite;
_itemSave.isVisible = _item.isVisible;

_itemSave.pickupScript = scr_item_pickup;

var _itemIndex = _item.object_index;

_itemSave.itemObject = _itemIndex;

if(scr_is_ancestor_or_is(_itemIndex, obj_inventory_equipment_parent)){

	with(_itemSave){
		for(var i = 0; i < EQUIPMENT_STATS_MAX; i++){
			equipmentStats[i] = _item.equipmentStats[i];
		}
		for(var i = 0; i < 4; i++){
			sprite[i] = _item.sprite[i];
			spriteBehind[i] = _item.spriteBehind[i];
		}
		
		unequipScript = _item.unequipScript;

		isEquipped = _item.isEquipped;
		isVisibleWhenEquipped = _item.isVisibleWhenEquipped;
	}
	
	if(scr_is_ancestor_or_is(_itemIndex, obj_equipment_weapon_parent)){
		with(_itemSave){
			damageType = _item.damageType;
		}
	}
	else if(scr_is_ancestor_or_is(_itemIndex, obj_inventory_equipment_offhand_parent)){
		with(_itemSave){
			actionScript = _item.actionScript;
		}
		
		if(scr_is_ancestor_or_is(_itemIndex, obj_equipment_torch_parent)){
			with(_itemSave){
				flame = noone;
				
				dropScript = _item.dropScript;

				flameObject = _item.flameObject;

				for(var i = 0; i < 3; i++){
					flameColor[i] = _item.flameColor[i];
				}
			}
			
			if(scr_is_ancestor_or_is(_itemIndex, obj_offhand_tome_parent)){
				with(_itemSave){
					uninitializedSpells = _item.uninitializedSpells;
				}
			}
			
		}
		
	}
	
}
else if(scr_is_ancestor_or_is(_itemIndex, obj_inventory_consumable_parent)){
	
}
else if(scr_is_ancestor_or_is(_itemIndex, obj_inventory_item_gold_parent)){
	
}
else if(scr_is_ancestor_or_is(_itemIndex, obj_inventory_key_parent)){
	
}





