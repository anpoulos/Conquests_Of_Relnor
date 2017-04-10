///used as ui object
///tempval is the index in the character inventory

selectedItem = character.inventory[tempVal];
VaultItemButton.text = "Store";
VaultItemButton.clickedScript = scr_ui_vault_button_store;
VaultItemButton.isVisible = true;
VaultItemButton.tempVal = tempVal;