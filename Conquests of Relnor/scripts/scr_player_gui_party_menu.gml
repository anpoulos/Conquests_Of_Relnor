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
    InventoryInfoContainerItemStats.useItemButton.isVisible = false;
    scr_player_gui_party_update_inventory();
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
        
    //Container Center Line
        var _PauseMenuInventoryContainerLength = PauseMenuInventoryContainer.rightX - PauseMenuInventoryContainer.leftX;
        var _x = PauseMenuInventoryContainer.leftX + round(_PauseMenuInventoryContainerLength * 0.30); //centered at 30% of width
        var _y1 = PauseMenuInventoryContainer.topY-2;
        var _y2 = PauseMenuInventoryContainer.bottomY;
        var _width = 1;
        
        InventoryCenterLine = scr_ui_draw_line_constructor(_x, _y1, _x, _y2, _width, c_black, c_black, PauseMenuInventoryContainer);
        InventoryCenterLine.isVisible = true;
    //End of Container Center Line
    
    //Container Right Line
        var _PauseMenuInventoryContainerLength = PauseMenuInventoryContainer.rightX - PauseMenuInventoryContainer.leftX;
        var _x = PauseMenuInventoryContainer.leftX + round(_PauseMenuInventoryContainerLength * 0.60); //centered at 60% of width
        var _y1 = PauseMenuInventoryContainer.topY-2;
        var _y2 = PauseMenuInventoryContainer.bottomY;
        var _width = 1;
        
        InventoryRightLine = scr_ui_draw_line_constructor(_x, _y1, _x, _y2, _width, c_black, c_black, PauseMenuInventoryContainer);
        InventoryRightLine.isVisible = true;
    //End of Container Right Line
    
    //Inventory Info Container
        var _menuColor = make_colour_rgb(100,100,150);
        var _menuColorArray = scr_create_obj_array4_repeat(_menuColor, "_menuColorArray");
            
        var _width = round((scr_ui_menu_get_width(PauseMenuInventoryContainer)-_margin*2) * 0.3);
        var _height = scr_ui_menu_get_height(PauseMenuInventoryContainer) - _margin*2 - 50;
        
        var _menuPosArray = scr_ui_menu_get_pos_array(_width, _height);
        
        var _rightSideLength = PauseMenuInventoryContainer.rightX - InventoryRightLine.x1;
    
        var _menuX = InventoryRightLine.x1 + round(_rightSideLength/2);
        var _menuY = PauseMenuInventoryContainer.bottomY - _menuPosArray.item[3] - _margin;
        
        InventoryInfoContainerInventorySlots[INVENTORY_MAX] = noone;
        InventoryInfoContainer = scr_ui_menu_create_container(_menuX, _menuY, _menuPosArray, _menuColorArray, false, 0.9, noone);
        
        scr_ui_menu_container_add_draw_object(InventoryInfoContainer, PauseMenuInventoryContainer);
        InventoryInfoContainer.isVisible = true;
        
        scr_destroy_instance(_menuColorArray);
        scr_destroy_instance(_menuPosArray);          
        
        InventoryInfoContainerItemStats = instance_create(x,y,obj_ui_party_inventory_item_info);
        InventoryInfoContainerItemStats.inventoryInfoContainer = InventoryInfoContainer;
        InventoryInfoContainerItemStats.player = self;
        
        scr_ui_menu_container_add_draw_object(InventoryInfoContainerItemStats, InventoryInfoContainer);
        
            //Start of Use Button
                var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,150), "_buttonColorArray");
                var _buttonPressedColor = make_colour_rgb(0,0,100);
                
                var _buttonPosArray = scr_create_obj_array4(-25, -10, 25, 10, "_buttonPosArray");
                
                var _fontColor = c_white;
                
                var _buttonX = InventoryInfoContainer.rightX - 50;
                var _buttonY = InventoryInfoContainer.topY + 20;
                
                var _text = "";
                            
                var _buttonInfo = scr_ui_get_obj_ui_button_information(5, noone, self, 
                _text, fnt_default_small, _fontColor, 1.0, 0.8);
                
                InventoryInfoContainerItemStats.useItemButton = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
                _buttonColorArray, _buttonPressedColor, true, _buttonInfo, InventoryInfoContainer);
                
                scr_destroy_instance(_buttonColorArray);
                scr_destroy_instance(_buttonPosArray);
                scr_destroy_instance(_buttonInfo);
            //End of Use Button
        
    //End of Inventory Info Container
    
    //Inventory Row section
    
        //Inventory Row Text
            var _x = PauseMenuInventoryContainer.leftX + 50;
            var _y = PauseMenuInventoryContainer.topY + 20;
            var _text = "Inventory";
            
            var _font = scr_ui_font_constructor(_x,_y, _text, fnt_default_large, c_white, 1.0, fa_left, fa_middle, PauseMenuInventoryContainer);
            _font.isVisible = true;
        //End of Inventory Row Text
    
        for(var i = 0; i < INVENTORY_MAX; i++){
            InventoryContainerRow[i] = instance_create(0,0,obj_ui_party_inventory_row);
            InventoryContainerRow[i].itemInfo = InventoryInfoContainerItemStats;
            InventoryContainerRow[i].inventoryContainerRow = InventoryContainerRow;
            InventoryContainerRow[i].player = self;
            
            //Start of Use Button
                var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,150), "_buttonColorArray");
                var _buttonPressedColor = make_colour_rgb(0,0,100);
                
                var _buttonPosArray = scr_create_obj_array4(-25, -10, 25, 10, "_buttonPosArray");
                
                var _fontColor = c_white;
                
                var _buttonX = x;
                var _buttonY = y;
                
                var _text = "";
                            
                var _buttonInfo = scr_ui_get_obj_ui_button_information(5, noone, self, 
                _text, fnt_default_small, _fontColor, 1.0, 0.8);
                
                InventoryContainerRow[i].useItemButton = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
                _buttonColorArray, _buttonPressedColor, true, _buttonInfo, PauseMenuInventoryContainer);
                
                scr_destroy_instance(_buttonColorArray);
                scr_destroy_instance(_buttonPosArray);
                scr_destroy_instance(_buttonInfo);
            //End of Use Button
            
            scr_ui_menu_container_add_draw_object(InventoryContainerRow[i], PauseMenuInventoryContainer);
        }
        scr_player_gui_party_update_inventory();
    //End of Inventory Row section

    //Equipment Row Section
        for(var i = 0; i < EQUIPMENT_TYPE_MAX; i++){
            EquipmentInventoryContainerRow[i] = instance_create(0,0,obj_ui_party_inventory_row);
            EquipmentInventoryContainerRow[i].itemInfo = InventoryInfoContainerItemStats;
            EquipmentInventoryContainerRow[i].inventoryContainerRow = EquipmentInventoryContainerRow;
            EquipmentInventoryContainerRow[i].player = self;
            
            //Start of unequip Button
                var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,150), "_buttonColorArray");
                var _buttonPressedColor = make_colour_rgb(0,0,100);
                
                var _buttonPosArray = scr_create_obj_array4(-25, -10, 25, 10, "_buttonPosArray");
                
                var _fontColor = c_white;
                
                var _buttonX = x;
                var _buttonY = y;
                
                var _text = "Unequip";
                            
                var _buttonInfo = scr_ui_get_obj_ui_button_information(5, noone, self, 
                _text, fnt_default_small, _fontColor, 1.0, 0.8);
                
                EquipmentInventoryContainerRow[i].useItemButton = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
                _buttonColorArray, _buttonPressedColor, true, _buttonInfo, PauseMenuInventoryContainer);
                
                scr_destroy_instance(_buttonColorArray);
                scr_destroy_instance(_buttonPosArray);
                scr_destroy_instance(_buttonInfo);
            //End of unequip Button
            
            scr_ui_menu_container_add_draw_object(EquipmentInventoryContainerRow[i], PauseMenuInventoryContainer);
        }
        scr_player_gui_party_update_equipment();    
    //End of Equipment Row Section    
        
    //Equipment Row Section
        //Equipment Row Text
            var _PauseMenuInventoryContainerLength = PauseMenuInventoryContainer.rightX - PauseMenuInventoryContainer.leftX;
            var _x = InventoryCenterLine.x1 + 50; 
            var _y = PauseMenuInventoryContainer.topY + 20;
            var _text = "Equipment";
            
            var _font = scr_ui_font_constructor(_x,_y, _text, fnt_default_large, c_white, 1.0, fa_left, fa_middle, PauseMenuInventoryContainer);
            _font.isVisible = true;
        //End of Equipment Row Text
    
    //End of Equipment Row Section
    
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


