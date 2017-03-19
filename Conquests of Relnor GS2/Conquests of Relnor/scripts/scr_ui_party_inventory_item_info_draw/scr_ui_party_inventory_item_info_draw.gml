///scr_ui_party_inventory_item_info_draw

if(!isVisible){
    return false;
}

var _x = inventoryInfoContainer.leftX + 10;
var _y = inventoryInfoContainer.topY + 10;

scr_ui_draw_inventory_text(_x, _y, inventoryItem, inventoryItem.owner);