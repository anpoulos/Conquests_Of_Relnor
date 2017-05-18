
///@param setting

switch(global.mapControl.settingsType[argument0]){
	case SETTINGS_TYPE_BOOLEAN:
		if(global.mapControl.settings[argument0]){
			return "On";
		}
		else{
			return "Off";
		}
	break;
	
	case SETTINGS_TYPE_DECIMAL:
		return string(global.mapControl.settings[argument0]);
	break;
}

