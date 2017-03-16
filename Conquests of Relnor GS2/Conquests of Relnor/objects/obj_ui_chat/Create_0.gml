///Create

npc = noone;
player = noone;
lines = scr_linked_list_create();
branches = noone; //array of linked lists
buttons = scr_linked_list_create();
currentBranch = 0;
defaultNameText = noone;
scripts[0] = noone;
scripts[1] = noone;
scripts[2] = noone;
scripts[3] = noone;
scripts[4] = noone;

//Create Chat Container
    var _menuColorArray = scr_create_obj_array4_repeat(make_colour_rgb(150,150,150), "_menuColorArray");
    var _menuPosArray = scr_create_obj_array4(-300, -75, 300, 75, "_menuPosArray");
    
    var _menuX = display_get_gui_width()/2;
    var _menuY = _menuPosArray.item[3]+10;
    
    ChatContainer = scr_ui_menu_create_container(_menuX, _menuY, _menuPosArray, _menuColorArray, true, 0.5, noone);
    
    scr_destroy_instance(_menuColorArray);
    scr_destroy_instance(_menuPosArray);    
//End Create Chat Container

//Create name text
var _textX = ChatContainer.leftX + 20;
var _textY = ChatContainer.topY + 20;

NameText = scr_ui_font_constructor(_textX, _textY, "", fnt_default_large, c_white, 
        1.0, fa_left, fa_middle, ChatContainer);
NameText.isVisible = true;
//End create name text
