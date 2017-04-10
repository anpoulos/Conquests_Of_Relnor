
var _ui = instance_create(0,0,obj_ui_vault);
_ui.vault = vault;
_ui.character = instance_find(obj_player, 0);
scr_ui_vault_refresh(_ui);
