///Create Font
event_inherited();
name = "UI Font";
text = "";
fullText = "";
font = fnt_default_medium;
color = c_gray;
alpha = 1;
halign = fa_center;
valign = fa_middle;
scroll = false;

scrollTextCounter = 0;

//override
self.drawScript = scr_ui_font_parent_draw;

