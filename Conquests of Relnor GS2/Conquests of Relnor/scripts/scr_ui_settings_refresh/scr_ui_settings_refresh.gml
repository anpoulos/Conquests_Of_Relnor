
var _totalSettingsObjects = scr_linked_list_size(SettingsUIObjects);

for(var i = 0; i < _totalSettingsObjects; i++){
	var _uiObject = scr_linked_list_get_next(SettingsUIObjects);
	if(_uiObject == SettingsMenuContainer){
		continue;
	}
	
	instance_destroy(_uiObject);
}

scr_ui_settings_menu_open(false);