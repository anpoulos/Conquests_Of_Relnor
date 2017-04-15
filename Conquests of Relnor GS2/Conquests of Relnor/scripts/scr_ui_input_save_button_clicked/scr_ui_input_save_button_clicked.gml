///called as ui keyboard input object

var _currentText = currentText;
var _saveScript = saveScript;

with(executeSaveScriptAs){
	script_execute(_saveScript, _currentText);
}