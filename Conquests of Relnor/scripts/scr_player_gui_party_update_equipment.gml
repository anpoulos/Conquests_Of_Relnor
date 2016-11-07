///scr_player_gui_party_update_equipment

//clear old order and refresh with new order
var _x = InventoryCenterLine.x1 + 30;
var _y = PauseMenuInventoryContainer.topY + 30;
var _yOffset = 30;
for(var i = 0; i < EQUIPMENT_TYPE_MAX; i++){
    EquipmentInventoryContainerRow[i].useItemButton.isVisible = false;
    
    if(equipment[i] != noone){
        EquipmentInventoryContainerRow[i].x = _x;
        EquipmentInventoryContainerRow[i].y = _y + _yOffset;
        EquipmentInventoryContainerRow[i].inventoryItem = equipment[i];
        EquipmentInventoryContainerRow[i].sprite_index = equipment[i].icon;
        EquipmentInventoryContainerRow[i].isEquipped = true;
        
        var _widthOffset = round(sprite_get_width(EquipmentInventoryContainerRow[i].sprite_index)/2);
        var _heightOffset = round(sprite_get_height(EquipmentInventoryContainerRow[i].sprite_index)/2);
        
        EquipmentInventoryContainerRow[i].leftX = EquipmentInventoryContainerRow[i].x - _widthOffset;
        EquipmentInventoryContainerRow[i].rightX = EquipmentInventoryContainerRow[i].x + _widthOffset + string_length(equipment[i].itemStats[ITEM_STATS_NAME])*15;
        EquipmentInventoryContainerRow[i].topY = EquipmentInventoryContainerRow[i].y - _heightOffset;
        EquipmentInventoryContainerRow[i].bottomY = EquipmentInventoryContainerRow[i].y + _heightOffset;
        
        var _newX = EquipmentInventoryContainerRow[i].rightX + 20;
        var _newY = EquipmentInventoryContainerRow[i].y;
        
        scr_ui_button_move(EquipmentInventoryContainerRow[i].useItemButton, _newX, _newY);
        
        EquipmentInventoryContainerRow[i].isVisible = true;        
        _y += _yOffset;
    }
    else{
        EquipmentInventoryContainerRow[i].sprite = noone;
        EquipmentInventoryContainerRow[i].name = "";
        EquipmentInventoryContainerRow[i].isEquipped = false;
        EquipmentInventoryContainerRow[i].isVisible = false;
    }
}

