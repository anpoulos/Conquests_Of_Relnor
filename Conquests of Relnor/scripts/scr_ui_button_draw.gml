///scr_ui_button_draw(obj_ui_button)

var _button = argument0;

if(_button.isVisible){
    //draw button rectangle
    draw_set_alpha(_button.buttonAlpha);
    if(_button.isOutlined){
        draw_rectangle_colour(_button.leftX, _button.topY, 
        _button.rightX, _button.bottomY, 
        c_black, c_black, c_black, c_black, 
        true);
    }
    
    if(_button.pressed){
        draw_rectangle_colour(_button.leftX, _button.topY, 
        _button.rightX, _button.bottomY, 
        _button.buttonPressedColor, _button.buttonPressedColor, 
        _button.buttonPressedColor, _button.buttonPressedColor, 
        false);
    }
    else{
        draw_rectangle_colour(_button.leftX, _button.topY, 
        _button.rightX, _button.bottomY, 
        _button.topLeftColor, _button.topRightColor, 
        _button.bottomRightColor, _button.bottomLeftColor, 
        false);
    }
    
    //draw text
    draw_set_color(_button.fontColor);
    draw_set_font(_button.font);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_alpha(_button.fontAlpha);
    draw_text(x,y,_button.text);
    
    scr_ui_button_set_default_draw();
}
