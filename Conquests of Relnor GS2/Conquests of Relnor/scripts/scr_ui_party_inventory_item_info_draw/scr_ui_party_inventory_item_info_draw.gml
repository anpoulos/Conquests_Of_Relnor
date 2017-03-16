///scr_ui_party_inventory_item_info_draw

if(!isVisible){
    return false;
}

var _x = inventoryInfoContainer.leftX + 10;
var _y = inventoryInfoContainer.topY + 10;
var _yOffset = 20;

draw_set_halign(fa_left);
draw_set_font(fnt_default_medium);
for(var i = 0; i < ITEM_STATS_MAX; i++){
    var _itemStat = inventoryItem.itemStats[i];
    if(_itemStat != noone){
        var _itemStatString = scr_item_get_stat_name(i);
        switch(i){
            case ITEM_STATS_TYPE:
                _itemStatString +=  ": " + scr_item_type_get_name(_itemStat);
		        draw_text_colour(_x,_y, string_hash_to_newline(_itemStatString), c_white, c_white, c_white, c_white,1);
		        _y += _yOffset;
				
				switch(_itemStat){
					case ITEM_TYPE_EQUIPMENT:
						for(var j = 0; j < EQUIPMENT_STATS_MAX; j++){
			                var _equipmentStat = inventoryItem.equipmentStats[j];
			                if(_equipmentStat != noone){
			                    var _equipmentStatString = scr_equipment_get_stat_name(j);
			                    switch(j){
			                        case EQUIPMENT_STATS_TYPE:
			                            _equipmentStatString += ": " + scr_equipment_get_type_name(_equipmentStat);
			                        break;
                        
			                        default:
			                            _equipmentStatString += ": " + string(_equipmentStat);
			                        break;
			                    }
			                    var _color = c_white;
			                    var _alreadyEquipped = inventoryItem.owner.equipment[inventoryItem.equipmentStats[EQUIPMENT_STATS_TYPE]];
			                    if(_alreadyEquipped != noone &&
			                    _alreadyEquipped != inventoryItem &&
			                    j != EQUIPMENT_STATS_TYPE){
			                       if(inventoryItem.equipmentStats[j] < _alreadyEquipped.equipmentStats[j]){
			                        _color = c_red;
			                       }
			                       else if(inventoryItem.equipmentStats[j] > _alreadyEquipped.equipmentStats[j]){
			                        _color = c_green;
			                       }
			                    }
			                    draw_text_colour(_x+10,_y, _equipmentStatString, _color, _color, _color, _color,1);
			                    _y += _yOffset;
			                }
			            }
					break;
					
					case ITEM_TYPE_CONSUMABLE:
						var _useString = "Uses: "+string(inventoryItem.uses);
						draw_text_colour(_x, _y, _useString, c_white, c_white, c_white, c_white, 1);
						_y += _yOffset;
						
						_y = scr_ui_party_inventory_consumable_draw_effect(STATS_PHYSICAL, _x, _y, _yOffset);
						_y = scr_ui_party_inventory_consumable_draw_effect(STATS_INTELLIGENCE, _x, _y, _yOffset);
						_y = scr_ui_party_inventory_consumable_draw_effect(STATS_TOOLS, _x, _y, _yOffset);
						_y = scr_ui_party_inventory_consumable_draw_effect(STATS_COMMANDING, _x, _y, _yOffset);
					break;
					
				}
				
            break;
        
            default:
                _itemStatString +=  ": " + string(_itemStat);    
		        draw_text_colour(_x,_y, string_hash_to_newline(_itemStatString), c_white, c_white, c_white, c_white,1);
		        _y += _yOffset;
            break;
        }    
        
    }
}
draw_set_halign(fa_center);
