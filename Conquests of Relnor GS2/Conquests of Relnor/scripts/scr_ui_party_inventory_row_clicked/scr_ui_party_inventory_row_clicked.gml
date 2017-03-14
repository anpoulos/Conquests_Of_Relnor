///scr_ui_party_inventory_row_clicked

var _buttonText = scr_item_get_use_type(inventoryItem.itemStats[ITEM_STATS_TYPE]);
var _size = INVENTORY_MAX;

if(isEquipped){
    _size = EQUIPMENT_TYPE_MAX;
    _buttonText = "Unequip";
    itemInfo.useItemButton.clickedScript = inventoryItem.unequipScript;
}
else{
    itemInfo.useItemButton.clickedScript = inventoryItem.useScript;
}

//disable others
for(var i = 0; i < INVENTORY_MAX; i++){
    player.InventoryContainerRow[i].isSelected = false;
    if(player.InventoryContainerRow[i] != self && 
    player.InventoryContainerRow[i].useItemButton != noone){
        player.InventoryContainerRow[i].useItemButton.isVisible = false;
    }
}
for(var i = 0; i < EQUIPMENT_TYPE_MAX; i++){
    player.EquipmentInventoryContainerRow[i].isSelected = false;
    if(player.EquipmentInventoryContainerRow[i] != self && 
    player.EquipmentInventoryContainerRow[i].useItemButton != noone){
        player.EquipmentInventoryContainerRow[i].useItemButton.isVisible = false;
    }
}

isSelected = true;

useItemButton.text = _buttonText;
useItemButton.isVisible = true;

itemInfo.inventoryItem = inventoryItem;

itemInfo.useItemButton.text = _buttonText;
itemInfo.useItemButton.clickedAs = inventoryItem;
itemInfo.useItemButton.isVisible = true;

player.InventoryInfoContainer.isVisible = true;
itemInfo.isVisible = true;
