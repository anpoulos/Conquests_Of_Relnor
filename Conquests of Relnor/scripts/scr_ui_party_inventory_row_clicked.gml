///scr_ui_party_inventory_row_clicked

itemInfo.inventoryItem = inventoryItem;
itemInfo.useItemButton.text = scr_item_get_use_type(inventoryItem.itemStats[ITEM_STATS_TYPE]);
itemInfo.useItemButton.isVisible = true;
itemInfo.isVisible = true;

//disable others
for(var i = 0; i < INVENTORY_MAX; i++){
    if(inventoryContainerRow[i] != self && inventoryContainerRow[i].useItemButton != noone){
        inventoryContainerRow[i].useItemButton.isVisible = false;
    }
}

useItemButton.text = scr_item_get_use_type(inventoryItem.itemStats[ITEM_STATS_TYPE]);
useItemButton.isVisible = true;
