///scr_ui_get_obj_ui_button_information(delay, buttonScript, buttonScriptAs, text, font, fontColor, fontAlpha, buttonAlpha)
var _buttonInformation = instance_create(0, 0, obj_ui_button_information);

_buttonInformation.delay = argument0;
_buttonInformation.clickedScript = argument1;
_buttonInformation.clickedAs = argument2;
_buttonInformation.text = argument3;
_buttonInformation.font = argument4;
_buttonInformation.fontColor = argument5;
_buttonInformation.fontAlpha = argument6;
_buttonInformation.buttonAlpha = argument7;
return _buttonInformation;
