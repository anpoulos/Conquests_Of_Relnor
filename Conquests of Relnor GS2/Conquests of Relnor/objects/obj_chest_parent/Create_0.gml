/// @description Insert description here
// You can write your code in this editor
event_inherited();

useScript = scr_chest_use;
vaultId = instance_number(obj_chest_parent);
vault = noone;

var _vaultList = global.mapSaves.vaultList[scr_room_get_id(room)];

var _foundVault = false;
for(var i = 0; i < scr_linked_list_size(_vaultList); i++){
	var _vault = scr_linked_list_get_next(_vaultList);
	if(_vault.vaultId == self.vaultId){
		_foundVault = true;
		vault = _vault;
		break;
	}
}

if(!_foundVault){
	vault = instance_create(0,0,obj_map_vault);
	vault.vaultId = self.vaultId;
	scr_linked_list_add(_vaultList, vault);
}