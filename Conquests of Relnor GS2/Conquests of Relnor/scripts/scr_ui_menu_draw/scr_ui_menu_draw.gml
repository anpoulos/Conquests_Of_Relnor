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
    
	var _objectsSize = scr_linked_list_size(objects);
	
    for(var i = 0; i < _objectsSize; i++){
		var _object = scr_linked_list_get_next(objects);
		if(instance_exists(_object) && _object.isVisible){
			scr_ui_draw_obj_draw(_object);
		}
    }
    scr_ui_menu_set_defaults();
}
