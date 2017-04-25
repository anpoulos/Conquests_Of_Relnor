///used as button
///tempVal[0] is menu container to destroy
///tempVal[1] is button script to execute
///tempVal[2] is who to execute script as
///tempVal[3] is tempVal 

var _menuToDestroy = tempVal[0];
var _newButtonScript = tempVal[1];
var _newButtonScriptAs = tempVal[2];
var _newTempVal = tempVal[3];

if(_newButtonScriptAs != noone){
	with(_newButtonScriptAs){
		tempVal = _newTempVal;
		script_execute(_newButtonScript);
	}
}
else if(_newButtonScript != noone){
	tempVal = _newTempVal;
	script_execute(_newButtonScript);
}

instance_destroy(_menuToDestroy);

scr_ui_menus_restore_all();