///scr_ui_font_parent_draw

if(self.isVisible){

   //draw text
    draw_set_color(self.color);
    draw_set_font(self.font);
    draw_set_halign(self.halign);
    draw_set_valign(self.valign);
    draw_set_alpha(self.alpha);
    draw_text(x,y,self.text);

    //reset text
    draw_set_halign(fa_left);
    draw_set_halign(fa_top);
    draw_set_colour(c_black);
    draw_set_font(fnt_default_medium);
    draw_set_alpha(1);
    
    
}
