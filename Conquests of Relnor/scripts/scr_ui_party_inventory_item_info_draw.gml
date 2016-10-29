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
            break;
        
            default:
                _itemStatString +=  ": " + string(_itemStat);
            break;
        }        
        draw_text_colour(_x,_y, _itemStatString, c_white, c_white, c_white, c_white,1);
        _y += _yOffset;
        
        if(i == ITEM_STATS_TYPE && _itemStat == ITEM_TYPE_EQUIPMENT){
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
                    draw_text_colour(_x+10,_y, _equipmentStatString, c_white, c_white, c_white, c_white,1);
                    _y += _yOffset;
                }
            }
        }
        
    }
}
draw_set_halign(fa_center);
