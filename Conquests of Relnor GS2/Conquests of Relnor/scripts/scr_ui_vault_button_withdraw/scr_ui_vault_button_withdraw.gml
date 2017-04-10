///used as ui vault object
///selectedItem is the item in question
///tempVal is the vault items index

if(scr_lifeform_parent_inventory_get_free_space(character) > 0){
	scr_lifeform_parent_inventory_add(character, selectedItem);
	vault.items[tempVal] = noone;
	scr_ui_vault_refresh(self);
	selectedItem = noone;
	VaultItemButton.isVisible = false;
	return true;
}

return false;