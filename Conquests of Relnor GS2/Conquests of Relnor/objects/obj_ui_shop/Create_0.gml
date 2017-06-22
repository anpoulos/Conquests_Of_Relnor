/// @description Create containers and buttons
// You can write your code in this editor
event_inherited();

owner = noone;
itemButtons = scr_linked_list_create();
selectedItem = noone;
player = instance_find(obj_player, 0);

var _margin = 20;

//Menu Container
	var _menuColor = make_colour_rgb(100,100,150);
	var _menuColorArray = scr_create_obj_array4_repeat(_menuColor, "_menuColorArray");
    
	var _halfWidth = display_get_gui_width()/2;
	var _halfHeight = display_get_gui_height()/2;
    
	var _menuPosArray = scr_create_obj_array4(-_halfWidth+50, -_halfHeight+50, 
	                                        _halfWidth-50, _halfHeight-50, "_menuPosArray");
	var _menuX = _halfWidth;
	var _menuY = _halfHeight;
    
	shopContainer = scr_ui_menu_create_container(_menuX, _menuY, _menuPosArray, _menuColorArray, true, 0.9, noone);
    
	scr_destroy_instance(_menuColorArray);
	scr_destroy_instance(_menuPosArray);
//End of Menu Container

//Shop Keeper Items Container
	var _menuColor = make_colour_rgb(100,100,150);
	var _menuColorArray = scr_create_obj_array4_repeat(_menuColor, "_menuColorArray");
    
	var _width = round(scr_ui_menu_get_width(shopContainer)/3) - _margin*2;
	var _height = scr_ui_menu_get_height(shopContainer) - _margin*2;
	
	var _menuPosArray = scr_create_obj_array4_ui(_width, _height);
	
	var _menuX = shopContainer.leftX + round(_width/2) + _margin;
	var _menuY = shopContainer.y;
    
	shopKeeperItemsContainer = scr_ui_menu_create_container(_menuX, _menuY, _menuPosArray, _menuColorArray, true, 0.9, noone);
    
	scr_destroy_instance(_menuColorArray);
	scr_destroy_instance(_menuPosArray);

	shopKeeperItemsContainer.isVisible = true;
	
	scr_ui_menu_container_add_draw_object(shopKeeperItemsContainer, shopContainer);
//End of Shop Keeper Items Container

//Player Items Container
	var _menuColor = make_colour_rgb(100,100,150);
	var _menuColorArray = scr_create_obj_array4_repeat(_menuColor, "_menuColorArray");
    
	var _width = round(scr_ui_menu_get_width(shopContainer)/3) - _margin*2;
	var _height = scr_ui_menu_get_height(shopContainer) - _margin*2;
	
	var _menuPosArray = scr_create_obj_array4_ui(_width, _height);
	
	var _menuX = shopContainer.x;
	var _menuY = shopContainer.y;
    
	playerItemsContainer = scr_ui_menu_create_container(_menuX, _menuY, _menuPosArray, _menuColorArray, true, 0.9, noone);
    
	scr_destroy_instance(_menuColorArray);
	scr_destroy_instance(_menuPosArray);

	playerItemsContainer.isVisible = true;
	
	scr_ui_menu_container_add_draw_object(playerItemsContainer, shopContainer);
//End of Player Items Container

//Item Information Container
	var _menuColor = make_colour_rgb(100,100,150);
	var _menuColorArray = scr_create_obj_array4_repeat(_menuColor, "_menuColorArray");
    
	var _width = round(scr_ui_menu_get_width(shopContainer)/3) - _margin*2;
	var _height = scr_ui_menu_get_height(shopContainer) - _margin*4;
	
	var _menuPosArray = scr_create_obj_array4_ui(_width, _height);
	
	var _menuX = shopContainer.rightX - round(_width/2) - _margin;
	var _menuY = shopContainer.y;
    
	itemInformationContainer = scr_ui_menu_create_container(_menuX, _menuY, _menuPosArray, _menuColorArray, true, 0.9, noone);
    
	scr_destroy_instance(_menuColorArray);
	scr_destroy_instance(_menuPosArray);

	itemInformationContainer.isVisible = true;
	
	scr_ui_menu_container_add_draw_object(itemInformationContainer, shopContainer);
//End of Item Information Container

// Buy/Sell button
    var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,150), "_buttonColorArray");
    var _buttonPressedColor = make_colour_rgb(0,0,100);
                
    var _buttonPosArray = scr_create_obj_array4(-25, -10, 25, 10, "_buttonPosArray");
                
    var _fontColor = c_white;
                
    var _buttonX = itemInformationContainer.x;
    var _buttonY = itemInformationContainer.topY + _margin*2;
                            
    var _buttonInfo = scr_ui_get_obj_ui_button_information(5, noone, self, 
		"", fnt_default_medium, _fontColor, 1.0, 0.8);
                
    buySellButton= scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
		_buttonColorArray, _buttonPressedColor, true, _buttonInfo, itemInformationContainer);
                
    scr_destroy_instance(_buttonColorArray);
    scr_destroy_instance(_buttonPosArray);
    scr_destroy_instance(_buttonInfo);
// End of Buy/Sell button

//Start of Close Button
    var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,150), "_buttonColorArray");
    var _buttonPressedColor = make_colour_rgb(0,0,100);
                
    var _buttonPosArray = scr_create_obj_array4(-25, -10, 25, 10, "_buttonPosArray");
                
    var _fontColor = c_white;
                
    var _buttonX = shopContainer.rightX - 30;
    var _buttonY = shopContainer.topY + 20;
                
    var _text = "X";
                            
    var _buttonInfo = scr_ui_get_obj_ui_button_information(5, scr_ui_shop_close, self, 
    _text, fnt_default_medium, _fontColor, 1.0, 0.8);
                
    var _button = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
    _buttonColorArray, _buttonPressedColor, true, _buttonInfo, shopContainer);
                
    scr_destroy_instance(_buttonColorArray);
    scr_destroy_instance(_buttonPosArray);
    scr_destroy_instance(_buttonInfo);
	
	_button.isVisible = true;
//End of Close Button

scr_ui_virtual_mouse_create(VIRTUAL_MOUSE_MODE_MOUSE, true);


