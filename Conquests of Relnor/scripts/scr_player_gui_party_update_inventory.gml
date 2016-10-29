///scr_player_gui_party_update_inventory

//clear old order and refresh with new order
var _x = PauseMenuInventoryContainer.leftX + 30;
var _y = PauseMenuInventoryContainer.topY + 10;
var _yOffset = 20;
for(var i = 0; i < INVENTORY_MAX; i++){
    if(inventory[i] != noone){
        InventoryContainerRow[i].x = _x;
        InventoryContainerRow[i].y = _y + _yOffset;
        InventoryContainerRow[i].inventoryItem = inventory[i];
        InventoryContainerRow[i].sprite_index = inventory[i].icon;
        
        var _widthOffset = round(sprite_get_width(InventoryContainerRow[i].sprite_index)/2);
        var _heightOffset = round(sprite_get_height(InventoryContainerRow[i].sprite_index)/2);
        
        InventoryContainerRow[i].leftX = InventoryContainerRow[i].x - _widthOffset;
        InventoryContainerRow[i].rightX = InventoryContainerRow[i].x + _widthOffset + string_length(inventory[i].itemStats[ITEM_STATS_NAME])*10;
        InventoryContainerRow[i].topY = InventoryContainerRow[i].y - _heightOffset;
        InventoryContainerRow[i].bottomY = InventoryContainerRow[i].y + _heightOffset;
        
        InventoryContainerRow[i].isVisible = true;
        _y += _yOffset;
    }
    else{
        InventoryContainerRow[i].sprite = noone;
        InventoryContainerRow[i].name = "";
        InventoryContainerRow[i].isVisible = false;
    }
}

