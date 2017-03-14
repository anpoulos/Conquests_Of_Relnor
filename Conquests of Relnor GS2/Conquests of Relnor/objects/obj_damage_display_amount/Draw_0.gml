///Draw

    if(fade){
        self.alpha -= 0.3;
    }

    y -= self.yOffset;
    
    //begin draw text
    draw_set_font(self.font);
    draw_set_halign(self.halign);
    draw_set_valign(self.valign);
    
    //draw text
    draw_set_alpha(self.alpha);
    draw_set_color(self.color);
    draw_text(x,y,string_hash_to_newline(self.text));

    //reset text
    draw_set_halign(fa_left);
    draw_set_halign(fa_top);
    draw_set_colour(c_black);
    draw_set_font(fnt_default_medium);
    draw_set_alpha(1);
    
    
    if(self.alpha <= 0){
        instance_destroy();
    }

