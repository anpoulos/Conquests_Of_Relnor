///scr_player_gui_party_update_inventory

//clear old order and refresh with new order
    
var selectedPlayer = InventoryInfoContainerItemStats.player;
    
var _x = PauseMenuInventoryContainer.leftX + 30;
var _y = PauseMenuInventoryContainer.topY + 30;
var _yOffset = 30;
for(var i = 0; i < INVENTORY_MAX; i++){
	if(InventoryContainerRow[i].isSelected && 
		selectedPlayer.inventory[i] != noone && 
		selectedPlayer.inventory[i].itemStats[ITEM_STATS_TYPE] == ITEM_TYPE_CONSUMABLE){
		
	}
	else{
	    InventoryContainerRow[i].isSelected = false;
	    InventoryContainerRow[i].useItemButton.isVisible = false;
	}
    
    if(selectedPlayer.inventory[i] != noone){
        InventoryContainerRow[i].x = _x;
        InventoryContainerRow[i].y = _y + _yOffset;
        InventoryContainerRow[i].inventoryItem = selectedPlayer.inventory[i];
        InventoryContainerRow[i].sprite_index = selectedPlayer.inventory[i].icon;
        
        var _widthOffset = round(sprite_get_width(InventoryContainerRow[i].sprite_index)/2);
        var _heightOffset = round(sprite_get_height(InventoryContainerRow[i].sprite_index)/2);
        
        InventoryContainerRow[i].leftX = PauseMenuInventoryContainer.leftX + 1;
        InventoryContainerRow[i].rightX = InventoryCenterLine.x1-60;
        InventoryContainerRow[i].topY = InventoryContainerRow[i].y - _heightOffset;
        InventoryContainerRow[i].bottomY = InventoryContainerRow[i].y + _heightOffset;
        
        var _newX = InventoryContainerRow[i].rightX + 30;
        var _newY = InventoryContainerRow[i].y;
        
        scr_ui_button_move(InventoryContainerRow[i].useItemButton, _newX, _newY);
        InventoryContainerRow[i].useItemButton.clickedScript = selectedPlayer.inventory[i].useScript;
        InventoryContainerRow[i].useItemButton.clickedAs = selectedPlayer.inventory[i];
        
        InventoryContainerRow[i].isVisible = true;        
        _y += _yOffset;
    }
    else{
        InventoryContainerRow[i].useItemButton.clickedScript = noone;
        InventoryContainerRow[i].useItemButton.clickedAs = noone;
        InventoryContainerRow[i].sprite = noone;
        InventoryContainerRow[i].name = "";
        InventoryContainerRow[i].isVisible = false;
    }
}

