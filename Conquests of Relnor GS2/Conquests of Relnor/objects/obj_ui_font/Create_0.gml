///Create Font
event_inherited();
name = "UI Font";

font = fnt_default_medium;
color = c_gray;
alpha = 1;
halign = fa_center;
valign = fa_middle;

//override
self.drawScript = scr_ui_font_parent_draw;

