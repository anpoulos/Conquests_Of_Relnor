///scr_ui_menu_draw

///Draw Sprite, Menu, and Buttons

if(self.menuContainer != noone && !self.menuContainer.isVisible){
    return true;
}

if(self.isVisible){    
    //draw menu rectangle
    draw_set_alpha(self.menuAlpha);
    
    if(self.isOutlined){
        draw_rectangle_colour(self.leftX, self.topY, 
        self.rightX, self.bottomY, 
        c_black, c_black, c_black, c_black, 
        true);
    }
    
    draw_rectangle_colour(self.leftX, self.topY, 
    self.rightX, self.bottomY, 
    self.topLeftColor, self.topRightColor, 
    self.bottomRightColor, self.bottomLeftColor, 
    false);
    
    for(var i = 0; i < scr_linked_list_size(objects); i++){
            scr_ui_draw_obj_draw(scr_linked_list_get_next(objects));
    }
    scr_ui_menu_set_defaults();
}
