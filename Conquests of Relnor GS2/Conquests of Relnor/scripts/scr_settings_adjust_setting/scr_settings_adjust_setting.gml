///@param setting
///@param settingUpOrDown

var _setting = argument0;
var _settingUpOrDown = argument1;

switch(global.mapControl.settingsType[_setting]){
	case SETTINGS_TYPE_BOOLEAN:
		if(_settingUpOrDown == SETTINGS_DOWN){
			global.mapControl.settings[_setting] = false;
		}
		else{
			global.mapControl.settings[_setting] = true;
		}
	break;
	
	case SETTINGS_TYPE_DECIMAL:
		var _adjustAmount = 0.1;
		if(_settingUpOrDown == SETTINGS_DOWN){
			_adjustAmount = -_adjustAmount;
		}
		global.mapControl.settings[_setting] += _adjustAmount;
	break;
}

switch(_setting){
	case SETTINGS_SCROLL_SPEED:
		var _settingAmount = global.mapControl.settings[_setting];
		global.scrollSpeed = (1.1 - _settingAmount)*10;
	break;
}