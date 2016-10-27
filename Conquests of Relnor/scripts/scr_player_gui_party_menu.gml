///scr_player_gui_party_menu

scr_player_enable_busy();
    
for(var i = 0; i < scr_linked_list_size(Menus); i++){
    var _menu = scr_linked_list_get_next(Menus);
    if(instance_exists(_menu)){
        _menu.wasVisible = _menu.isVisible;
        _menu.isVisible = false;
    }
}

if(PauseText != noone){
    PauseText.wasVisible = PauseText.isVisible;
    PauseText.isVisible = false;
}

if(PauseMenuContainer != noone){
    PauseMenuContainer.isVisible = true;
    return true;
}

var _margin = 10;

//Menu Container
    var _menuColor = make_colour_rgb(100,100,150);
    var _menuColorArray = scr_create_obj_array4_repeat(_menuColor, "_menuColorArray");
    
    var _halfWidth = display_get_gui_width()/2;
    var _halfHeight = display_get_gui_height()/2;
    
    var _menuPosArray = scr_create_obj_array4(-_halfWidth+50, -_halfHeight+50, 
                                            _halfWidth-50, _halfHeight-50, "_menuPosArray");
    var _menuX = _halfWidth;
    var _menuY = _halfHeight;
    
    PauseMenuContainer = scr_ui_menu_create_container(_menuX, _menuY, _menuPosArray, _menuColorArray, true, 0.9, noone);
    
    scr_destroy_instance(_menuColorArray);
    scr_destroy_instance(_menuPosArray);
//End of Menu Container

//Options Container
    var _menuColor = make_colour_rgb(100,100,150);
    var _menuColorArray = scr_create_obj_array4_repeat(_menuColor, "_menuColorArray");
        
    var _height = PauseMenuContainer.bottomY - PauseMenuContainer.topY - _margin*2; 
    
    var _width = round(scr_ui_menu_get_width(PauseMenuContainer) * 0.15);
    
    var _menuPosArray = scr_ui_menu_get_pos_array(_width, _height);

    var _menuX = PauseMenuContainer.leftX + _menuPosArray.item[2]+_margin;
    var _menuY = PauseMenuContainer.y;
    
    PauseMenuOptionsContainer = scr_ui_menu_create_container(_menuX, _menuY, _menuPosArray, _menuColorArray, true, 0.9, noone);
    
    scr_ui_menu_container_add_draw_object(PauseMenuOptionsContainer, PauseMenuContainer);
    PauseMenuOptionsContainer.isVisible = true;
    
    scr_destroy_instance(_menuColorArray);
    scr_destroy_instance(_menuPosArray);
//End of Options Container

//Character Information Container
    var _menuColor = make_colour_rgb(100,100,150);
    var _menuColorArray = scr_create_obj_array4_repeat(_menuColor, "_menuColorArray");
        
    var _width = (PauseMenuContainer.rightX - _margin) - (PauseMenuOptionsContainer.rightX + _margin);
    var _height = round(scr_ui_menu_get_height(PauseMenuContainer) * 0.25)
    
    var _menuPosArray = scr_ui_menu_get_pos_array(_width, _height);

    var _menuX = PauseMenuOptionsContainer.rightX + _menuPosArray.item[2] + _margin;
    var _menuY = PauseMenuContainer.topY + _menuPosArray.item[3] + _margin;
    
    PauseMenuPlayerInformationContainer = scr_ui_menu_create_container(_menuX, _menuY, _menuPosArray, _menuColorArray, true, 0.9, noone);
    
    scr_ui_menu_container_add_draw_object(PauseMenuPlayerInformationContainer, PauseMenuContainer);
    PauseMenuPlayerInformationContainer.isVisible = true;
    
    scr_destroy_instance(_menuColorArray);
    scr_destroy_instance(_menuPosArray);
//End of Character Information Container

//Inventory Container
    var _menuColor = make_colour_rgb(100,100,150);
    var _menuColorArray = scr_create_obj_array4_repeat(_menuColor, "_menuColorArray");
        
    var _width = (PauseMenuContainer.rightX - _margin) - (PauseMenuOptionsContainer.rightX + _margin);
    var _height = round((scr_ui_menu_get_height(PauseMenuContainer)-_margin*2) * 0.7);
    
    var _menuPosArray = scr_ui_menu_get_pos_array(_width, _height);

    var _menuX = PauseMenuOptionsContainer.rightX + _menuPosArray.item[2] + _margin;
    var _menuY = PauseMenuPlayerInformationContainer.bottomY + _menuPosArray.item[3] + _margin;
    
    PauseMenuInventoryContainer = scr_ui_menu_create_container(_menuX, _menuY, _menuPosArray, _menuColorArray, true, 0.9, noone);
    
    scr_ui_menu_container_add_draw_object(PauseMenuInventoryContainer, PauseMenuContainer);
    PauseMenuInventoryContainer.isVisible = true;
    
    scr_destroy_instance(_menuColorArray);
    scr_destroy_instance(_menuPosArray);
    //Inventory Info Container
        var _menuColor = make_colour_rgb(100,100,150);
        var _menuColorArray = scr_create_obj_array4_repeat(_menuColor, "_menuColorArray");
            
        var _width = round((scr_ui_menu_get_width(PauseMenuInventoryContainer)-_margin*2) * 0.3);
        var _height = scr_ui_menu_get_height(PauseMenuInventoryContainer) - _margin*2;
        
        var _menuPosArray = scr_ui_menu_get_pos_array(_width, _height);
    
        var _menuX = PauseMenuInventoryContainer.rightX - _menuPosArray.item[2] - _margin;
        var _menuY = PauseMenuInventoryContainer.y;
        
        InventoryInfoContainer = scr_ui_menu_create_container(_menuX, _menuY, _menuPosArray, _menuColorArray, true, 0.9, noone);
        
        scr_ui_menu_container_add_draw_object(InventoryInfoContainer, PauseMenuInventoryContainer);
        InventoryInfoContainer.isVisible = true;
        
        scr_destroy_instance(_menuColorArray);
        scr_destroy_instance(_menuPosArray);
    //End of Inventory Info Container
//End of Inventory Container

//Start of Close Menu Button
    var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,150), "_buttonColorArray");
    var _buttonPressedColor = make_colour_rgb(0,0,100);
    
    var _buttonPosArray = scr_create_obj_array4(-70, -20, 70, 20, "_buttonPosArray");
    
    var _fontColor = c_white;
    
    var _buttonX = PauseMenuOptionsContainer.x;
    var _buttonY = PauseMenuOptionsContainer.topY + _buttonPosArray.item[3] + 10;
    
    var _buttonInfo = scr_ui_get_obj_ui_button_information(5, scr_ui_button_pause_close, self, 
    "Close Menu", fnt_default_medium, _fontColor, 1.0, 0.8);
    
    var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
    _buttonColorArray, _buttonPressedColor, true, _buttonInfo, PauseMenuOptionsContainer);
    
    _button.isVisible = true;
    
    scr_destroy_instance(_buttonColorArray);
    scr_destroy_instance(_buttonPosArray);
    scr_destroy_instance(_buttonInfo);
//End of Close Menu Button

    var _buttonOffset = 40;

//Start of Save Game Button
    var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,150), "_buttonColorArray");
    var _buttonPressedColor = make_colour_rgb(0,0,100);
    
    var _buttonPosArray = scr_create_obj_array4(-70, -20, 70, 20, "_buttonPosArray");
    
    var _fontColor = c_white;
    
    var _buttonX = _button.x;
    var _buttonY = _button.y + _buttonPosArray.item[3] + _buttonOffset;
    
    var _buttonInfo = scr_ui_get_obj_ui_button_information(5, scr_ui_menus_pause_save_game, self, 
    "Save Game", fnt_default_medium, _fontColor, 1.0, 0.8);
    
    var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
    _buttonColorArray, _buttonPressedColor, true, _buttonInfo, PauseMenuOptionsContainer);
    
    _button.isVisible = true;
    
    scr_destroy_instance(_buttonColorArray);
    scr_destroy_instance(_buttonPosArray);
    scr_destroy_instance(_buttonInfo);
//End of Save Game Button

//Start of Load Game Button
    var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,150), "_buttonColorArray");
    var _buttonPressedColor = make_colour_rgb(0,0,100);
    
    var _buttonPosArray = scr_create_obj_array4(-70, -20, 70, 20, "_buttonPosArray");
    
    var _fontColor = c_white;
    
    var _buttonX = _button.x;
    var _buttonY = _button.y + _buttonPosArray.item[3] + _buttonOffset;
    
    var _buttonInfo = scr_ui_get_obj_ui_button_information(5, noone, noone, 
    "Load Game", fnt_default_medium, _fontColor, 1.0, 0.8);
    
    var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
    _buttonColorArray, _buttonPressedColor, true, _buttonInfo, PauseMenuOptionsContainer);
    
    _button.isVisible = true;
    
    scr_destroy_instance(_buttonColorArray);
    scr_destroy_instance(_buttonPosArray);
    scr_destroy_instance(_buttonInfo);
//End of Load Game Button


//Start of Controls Button
    var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,150), "_buttonColorArray");
    var _buttonPressedColor = make_colour_rgb(0,0,100);
    
    var _buttonPosArray = scr_create_obj_array4(-70, -20, 70, 20, "_buttonPosArray");
    
    var _fontColor = c_white;
    
    var _buttonX = _button.x;
    var _buttonY = _button.y + _buttonPosArray.item[3] + _buttonOffset;
    
    var _buttonInfo = scr_ui_get_obj_ui_button_information(5, scr_ui_button_pause_menu_controls_open, self, 
    "Controls", fnt_default_medium, _fontColor, 1.0, 0.8);
    
    var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
    _buttonColorArray, _buttonPressedColor, true, _buttonInfo, PauseMenuOptionsContainer);
    
    _button.isVisible = true;
    
    scr_destroy_instance(_buttonColorArray);
    scr_destroy_instance(_buttonPosArray);
    scr_destroy_instance(_buttonInfo);
//End of Controls Button


//Start of Video Settings Button

//End of Video Settings Button


//Start of Quit Game Button

//End of Quite Game Button
                
                
PauseMenuContainer.isVisible = true;


