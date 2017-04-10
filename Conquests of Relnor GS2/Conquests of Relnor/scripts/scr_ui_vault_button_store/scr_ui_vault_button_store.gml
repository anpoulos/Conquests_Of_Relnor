///used as ui vault object
///selectedItem is the item in question
///tempVal is the inventory index

for(var i = 0; i < VAULT_MAX; i++){
	if(vault.items[i] == noone){
		character.inventory[tempVal] = noone;
		vault.items[i] = selectedItem;
		scr_ui_vault_refresh(self);
		selectedItem = noone;
		VaultItemButton.isVisible = false;
		return true;
	}
}

return false;