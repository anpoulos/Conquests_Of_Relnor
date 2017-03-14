///Create

npc = noone;
player = noone;
lines[3] = noone;
allLines = scr_linked_list_create();
branches = noone; //array of linked lists
scripts = noone;
buttons = noone;
buttonBranch = noone;
currentBranch = 0;
defaultNameText = noone;

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

//Create Text
    var _textOffset = 25;
    var _heightOffset = NameText.y + _textOffset+5;
    for(var i = 0; i < 4; i++){
        var _textX = ChatContainer.leftX + 35;
        var _textY = _heightOffset;
        _heightOffset += _textOffset;
        
        lines[i] = scr_ui_font_constructor(_textX, _textY, "", fnt_default_medium, c_white, 
        1.0, fa_left, fa_middle, ChatContainer);
        lines[i].isVisible = true;
    }
//End of Create Text


//Create Button1
    var _buttonColor = make_colour_rgb(100,100,100);
    var _buttonColorPressed = make_colour_rgb(50,50,50);
    var _buttonColorArray = scr_create_obj_array4_repeat(_buttonColor, "_buttonColorArray");
    
    var _buttonPosArray = scr_create_obj_array4(-70,-20,70,20, "_buttonPosArray");
    
    var _buttonX = ChatContainer.rightX - _buttonPosArray.item[2] - 10;
    var _buttonY = ChatContainer.topY + _buttonPosArray.item[3] + 10;
    
    var _buttonInfo = scr_ui_get_obj_ui_button_information(5, noone, noone, "Button1", 
                        fnt_default_medium, c_white, 1.0, 0.5);
    
    buttons[0] = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, _buttonColorArray, _buttonColorPressed,
                                true, _buttonInfo, ChatContainer);
    
    buttons[0].isVisible = true;
    
    scr_destroy_instance(_buttonColorArray);
    scr_destroy_instance(_buttonPosArray);
    scr_destroy_instance(_buttonInfo);
//End of Create Button1


//Create Button2
    var _buttonColor = make_colour_rgb(100,100,100);
    var _buttonColorPressed = make_colour_rgb(50,50,50);
    var _buttonColorArray = scr_create_obj_array4_repeat(_buttonColor, "_buttonColorArray");
    
    var _buttonPosArray = scr_create_obj_array4(-70,-20,70,20, "_buttonPosArray");
    
    var _buttonX = ChatContainer.rightX - _buttonPosArray.item[2] - 10;
    var _buttonY = buttons[0].y + _buttonPosArray.item[3] + 30;
    
    var _buttonInfo = scr_ui_get_obj_ui_button_information(5, noone, noone, "Button2", 
                        fnt_default_medium, c_white, 1.0, 0.5);
    
    buttons[1] = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, _buttonColorArray, _buttonColorPressed,
                                true, _buttonInfo, ChatContainer);
    
    buttons[1].isVisible = true;
    scr_destroy_instance(_buttonColorArray);
    scr_destroy_instance(_buttonPosArray);
    scr_destroy_instance(_buttonInfo);
//End of Button2


