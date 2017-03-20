///scr_ui_button_constructor(x, y, position_obj_array, color_obj_array, pressedColor, isOutlined, obj_ui_button_information, menuContainer)
///@param x
///@param y
///@param position_obj_array
///@param color_obj_array
///@param pressedColor
///@param isOutlined
///@param obj_ui_button_information
///@param menuContainer
var btn = instance_create(argument0, argument1, obj_ui_button);

btn.leftOffset = argument2.item[0];
btn.leftX = btn.x + btn.leftOffset;

btn.topOffset = argument2.item[1];
btn.topY = btn.y + btn.topOffset;

btn.rightOffset = argument2.item[2];
btn.rightX = btn.x + btn.rightOffset;

btn.bottomOffset = argument2.item[3];
btn.bottomY = btn.y + btn.bottomOffset;

btn.topLeftColor = argument3.item[0];
btn.topRightColor = argument3.item[1];
btn.bottomRightColor = argument3.item[2];
btn.bottomLeftColor = argument3.item[3];

btn.buttonPressedColor = argument4;

btn.isOutlined = argument5;

var _buttonInformation = argument6;

btn.delay = _buttonInformation.delay;
btn.clickedScript = _buttonInformation.clickedScript;
btn.text = _buttonInformation.text;
btn.textX = btn.x;
btn.textY = btn.y+5;
btn.font = _buttonInformation.font;
btn.fontColor = _buttonInformation.fontColor;
btn.buttonAlpha = _buttonInformation.buttonAlpha;
btn.fontAlpha = _buttonInformation.fontAlpha;
btn.clickedAs = _buttonInformation.clickedAs;

if(argument7 != noone){
    scr_ui_menu_container_add_draw_object(btn, argument7);
}

return btn;
