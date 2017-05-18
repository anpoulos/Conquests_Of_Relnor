///@param settings

switch(global.mapControl.settingsType[argument0]){
	case SETTINGS_TYPE_BOOLEAN: return true;
	case SETTINGS_TYPE_DECIMAL: return 1.0;
}