/// @description Insert description here
// You can write your code in this editor

alarm[0] = room_speed;

keyboard_lastkey = -1;
   
currentText = "";

saveScript = noone;
executeSaveScriptAs = noone;

//Menu Container
    var _menuColor = make_colour_rgb(100,100,150);
    var _menuColorArray = scr_create_obj_array4_repeat(_menuColor, "_menuColorArray");
    
    var _menuPosArray = scr_create_obj_array4_ui(round(display_get_gui_width()/4), round(display_get_gui_height()/4))
    var _menuX = display_get_gui_width()/2;
    var _menuY = display_get_gui_height()/2;
    
    MenuContainer = scr_ui_menu_create_container(_menuX, _menuY, _menuPosArray, _menuColorArray, true, 0.9, noone);
    
    scr_destroy_instance(_menuColorArray);
    scr_destroy_instance(_menuPosArray);
//End of Menu Container

//Current Input Text
    var _x = MenuContainer.leftX + 20; 
    var _y = MenuContainer.y;
    var _text = currentText;
            
    uiText = scr_ui_font_constructor(_x,_y, _text, fnt_default_large, c_white, 1.0, fa_left, fa_middle, MenuContainer);
    uiText.isVisible = true;
//Current Input Text

//Text Cursor Line
    var _x = uiText.x + 10;
    var _y1 = uiText.y + 10;
    var _y2 = uiText.y - 15;
    var _width = 1;
        
    TextCursorLine = scr_ui_draw_line_constructor(_x, _y1, _x, _y2, _width, c_black, c_black, MenuContainer);
    TextCursorLine.isVisible = true;
//Text Cursor Line

//Start of Use Button
    var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,150), "_buttonColorArray");
    var _buttonPressedColor = make_colour_rgb(0,0,100);
                
    var _buttonPosArray = scr_create_obj_array4_ui(100, 50);
                
    var _fontColor = c_white;
                
    var _buttonX = MenuContainer.x;
    var _buttonY = uiText.y + 40;
                
    var _text = "Save Input";
                            
    var _buttonInfo = scr_ui_get_obj_ui_button_information(5, scr_ui_input_save_button_clicked, self, 
    _text, fnt_default_medium, _fontColor, 1.0, 0.8);
                
    SaveInputButton = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
    _buttonColorArray, _buttonPressedColor, true, _buttonInfo, MenuContainer);
                
	SaveInputButton.isVisible = true;
				
    scr_destroy_instance(_buttonColorArray);
    scr_destroy_instance(_buttonPosArray);
    scr_destroy_instance(_buttonInfo);
//End of Use Button

MenuContainer.isVisible = true;