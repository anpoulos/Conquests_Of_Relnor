///scr_ui_button_draw

if(self.isVisible){
    //draw button rectangle
    draw_set_alpha(self.buttonAlpha);
    if(self.isOutlined){
        draw_rectangle_colour(self.leftX, self.topY, 
        self.rightX, self.bottomY, 
        c_black, c_black, c_black, c_black, 
        true);
    }
    
    if(self.pressed){
        draw_rectangle_colour(self.leftX, self.topY, 
        self.rightX, self.bottomY, 
        self.buttonPressedColor, self.buttonPressedColor, 
        self.buttonPressedColor, self.buttonPressedColor, 
        false);
    }
    else{
        draw_rectangle_colour(self.leftX, self.topY, 
        self.rightX, self.bottomY, 
        self.topLeftColor, self.topRightColor, 
        self.bottomRightColor, self.bottomLeftColor, 
        false);
    }
    
    //draw text
    draw_set_color(self.fontColor);
    draw_set_font(self.font);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_alpha(self.fontAlpha);
    draw_text(x,y,self.text);
    
    scr_ui_button_set_default_draw();
}
