
var _vault = noone;
var _vaultList = global.mapSaves.vaultList[scr_room_get_id(room)];

for(var i = 0; i < scr_linked_list_size(_vaultList); i++){
	_vault = scr_linked_list_get_next(_vault);
	if(_vault.vaultId == self.vaultId && (_vault.owner == noone || ownedByPlayer)){
		var _ui = instance_create(0,0,obj_ui_vault);
		_ui.vault = _vault;
		return true;
	}
}

return false;


