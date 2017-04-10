/// @description Insert description here
// You can write your code in this editor

vault = noone;
uiObjects = scr_linked_list_create();
selectedItem = noone;
character = noone;

//Menu Container
    var _menuColor = make_colour_rgb(100,100,150);
    var _menuColorArray = scr_create_obj_array4_repeat(_menuColor, "_menuColorArray");
    
    var _halfWidth = display_get_gui_width()/2;
    var _halfHeight = display_get_gui_height()/2;
    
    var _menuPosArray = scr_create_obj_array4(-_halfWidth+50, -_halfHeight+50, 
                                            _halfWidth-50, _halfHeight-50, "_menuPosArray");
    var _menuX = _halfWidth;
    var _menuY = _halfHeight;
    
    MenuContainer = scr_ui_menu_create_container(_menuX, _menuY, _menuPosArray, _menuColorArray, true, 0.9, noone);
    
    scr_destroy_instance(_menuColorArray);
    scr_destroy_instance(_menuPosArray);
//End of Menu Container
		
//Start of Use Button
    var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,150), "_buttonColorArray");
    var _buttonPressedColor = make_colour_rgb(0,0,100);
                
    var _buttonPosArray = scr_create_obj_array4_ui(50, 50);
                
    var _fontColor = c_white;
                
    var _buttonX = MenuContainer.rightX - 60;
    var _buttonY = MenuContainer.topY + 60;
                
    var _text = "X";
                            
    var _buttonInfo = scr_ui_get_obj_ui_button_information(5, scr_ui_vault_x_clicked, self, 
    _text, fnt_default_medium, _fontColor, 1.0, 0.8);
                
    var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
    _buttonColorArray, _buttonPressedColor, true, _buttonInfo, MenuContainer);
                
	_button.isVisible = true;
				
    scr_destroy_instance(_buttonColorArray);
    scr_destroy_instance(_buttonPosArray);
    scr_destroy_instance(_buttonInfo);
//End of Use Button

//Menu Container
    var _menuColor = make_colour_rgb(100,100,150);
    var _menuColorArray = scr_create_obj_array4_repeat(_menuColor, "_menuColorArray");
	
	var _width = round((MenuContainer.rightX - MenuContainer.leftX)/3);
	var _height = round((MenuContainer.bottomY - MenuContainer.topY)/1.25);
    
	var _menuPosArray = scr_create_obj_array4_ui(_width, _height);
	
    var _menuX = MenuContainer.leftX + round(_width/2) + 10;
    var _menuY = MenuContainer.bottomY - round(_height/2) - 10;
    
    VaultContainer = scr_ui_menu_create_container(_menuX, _menuY, _menuPosArray, _menuColorArray, true, 0.9, noone);
    VaultContainer.isVisible = true;
	
    scr_destroy_instance(_menuColorArray);
    scr_destroy_instance(_menuPosArray);
	
	scr_ui_menu_container_add_draw_object(VaultContainer, MenuContainer);
//End of Menu Container

//Menu Container
    var _menuColor = make_colour_rgb(100,100,150);
    var _menuColorArray = scr_create_obj_array4_repeat(_menuColor, "_menuColorArray");
	
	var _width = round((MenuContainer.rightX - MenuContainer.leftX)/3);
	var _height = round((MenuContainer.bottomY - MenuContainer.topY)/1.25);
    
	var _menuPosArray = scr_create_obj_array4_ui(_width, _height);
	
    var _menuX = VaultContainer.rightX + round(_width/2) + 10;
    var _menuY = MenuContainer.bottomY - round(_height/2) - 10;
    
    InventoryContainer = scr_ui_menu_create_container(_menuX, _menuY, _menuPosArray, _menuColorArray, true, 0.9, noone);
    InventoryContainer.isVisible = true;
	
    scr_destroy_instance(_menuColorArray);
    scr_destroy_instance(_menuPosArray);
	
	scr_ui_menu_container_add_draw_object(InventoryContainer, MenuContainer);
//End of Menu Container

//Menu Container
    var _menuColor = make_colour_rgb(100,100,150);
    var _menuColorArray = scr_create_obj_array4_repeat(_menuColor, "_menuColorArray");
	
	var _width = round((MenuContainer.rightX - MenuContainer.leftX)/3.5);
	var _height = round((MenuContainer.bottomY - MenuContainer.topY)/1.25);
    
	var _menuPosArray = scr_create_obj_array4_ui(_width, _height);
	
    var _menuX = InventoryContainer.rightX + round(_width/2) + 10;
    var _menuY = MenuContainer.bottomY - round(_height/2) - 10;
    
    ItemContainer = scr_ui_menu_create_container(_menuX, _menuY, _menuPosArray, _menuColorArray, true, 0.9, noone);
    ItemContainer.isVisible = true;
	
    scr_destroy_instance(_menuColorArray);
    scr_destroy_instance(_menuPosArray);
	
	scr_ui_menu_container_add_draw_object(ItemContainer, MenuContainer);
	
	//Vault Item Button
		var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,150), "_buttonColorArray");
		var _buttonPressedColor = make_colour_rgb(0,0,100);
                
		var _buttonPosArray = scr_create_obj_array4_ui(scr_ui_menu_get_width(ItemContainer), 40);
                
		var _fontColor = c_white;
		
		var _buttonText = "";
                
		var _buttonX = ItemContainer.x;
		var _buttonY = ItemContainer.topY + 50;
                            
		var _buttonInfo = scr_ui_get_obj_ui_button_information(5, noone, self, 
			_buttonText, fnt_default_medium, _fontColor, 1.0, 0.8);
                
		VaultItemButton = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
			_buttonColorArray, _buttonPressedColor, false, _buttonInfo, ItemContainer);
                
		scr_destroy_instance(_buttonColorArray);
		scr_destroy_instance(_buttonPosArray);
		scr_destroy_instance(_buttonInfo);
	//Vault Item Button
	
	
//End of Menu Container

MenuContainer.isVisible = true;