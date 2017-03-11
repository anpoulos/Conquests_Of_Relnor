///scr_player_gui_party_update_equipment

//clear old order and refresh with new order
var _x = InventoryCenterLine.x1 + 30;
var _y = PauseMenuInventoryContainer.topY + 30;
var _yOffset = 30;
for(var i = 0; i < EQUIPMENT_TYPE_MAX; i++){
    EquipmentInventoryContainerRow[i].useItemButton.isVisible = false;
    EquipmentInventoryContainerRow[i].isSelected = false;
    
    var selectedPlayer = InventoryInfoContainerItemStats.player;
    
    if(selectedPlayer.equipment[i] != noone){
        EquipmentInventoryContainerRow[i].x = _x;
        EquipmentInventoryContainerRow[i].y = _y + _yOffset;
        EquipmentInventoryContainerRow[i].inventoryItem = selectedPlayer.equipment[i];
        EquipmentInventoryContainerRow[i].sprite_index = selectedPlayer.equipment[i].icon;
        EquipmentInventoryContainerRow[i].isEquipped = true;
        
        var _widthOffset = round(sprite_get_width(EquipmentInventoryContainerRow[i].sprite_index)/2);
        var _heightOffset = round(sprite_get_height(EquipmentInventoryContainerRow[i].sprite_index)/2);
        
        EquipmentInventoryContainerRow[i].leftX = InventoryCenterLine.x1 + 1;
        EquipmentInventoryContainerRow[i].rightX = InventoryRightLine.x1-60;
        EquipmentInventoryContainerRow[i].topY = EquipmentInventoryContainerRow[i].y - _heightOffset;
        EquipmentInventoryContainerRow[i].bottomY = EquipmentInventoryContainerRow[i].y + _heightOffset;
        
        var _newX = EquipmentInventoryContainerRow[i].rightX + 30;
        var _newY = EquipmentInventoryContainerRow[i].y;
        
        scr_ui_button_move(EquipmentInventoryContainerRow[i].useItemButton, _newX, _newY);
        EquipmentInventoryContainerRow[i].useItemButton.clickedScript = selectedPlayer.equipment[i].unequipScript;
        EquipmentInventoryContainerRow[i].useItemButton.clickedAs = selectedPlayer.equipment[i];
        
        EquipmentInventoryContainerRow[i].isVisible = true;        
        _y += _yOffset;
    }
    else{
        EquipmentInventoryContainerRow[i].useItemButton.clickedScript = noone;
        EquipmentInventoryContainerRow[i].useItemButton.clickedAs = noone;
        EquipmentInventoryContainerRow[i].sprite = noone;
        EquipmentInventoryContainerRow[i].name = "";
        EquipmentInventoryContainerRow[i].isEquipped = false;
        EquipmentInventoryContainerRow[i].isVisible = false;
    }
}

