///button is used as the ui vault object
///tempVal is the vault.items index

selectedItem = vault.items[tempVal];
VaultItemButton.text = "Withdraw";
VaultItemButton.clickedScript = scr_ui_vault_button_withdraw;
VaultItemButton.isVisible = true;
VaultItemButton.tempVal = tempVal;