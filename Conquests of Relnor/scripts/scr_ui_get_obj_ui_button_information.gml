///scr_ui_get_obj_ui_button_information(delay, buttonScript, text, font, fontColor, fontAlpha, buttonAlpha)
var _buttonInformation = instance_create(0, 0, obj_ui_button_information);

_buttonInformation.delay = argument0;
_buttonInformation.buttonPressed = argument1;
_buttonInformation.text = argument2;
_buttonInformation.font = argument3;
_buttonInformation.fontColor = argument4;
_buttonInformation.fontAlpha = argument5;
_buttonInformation.buttonAlpha = argument6;
return _buttonInformation;
