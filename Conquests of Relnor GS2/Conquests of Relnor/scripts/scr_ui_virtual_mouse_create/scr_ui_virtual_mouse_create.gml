///@param mouseMode
///@param gui

var _mouseMode = argument0;
var _gui = argument1;

with(global.player){
	if(triggersInput == TRIGGER_INPUT_TYPE_CONTROLLER){
		if(virtualMouse != noone){
			instance_destroy(virtualMouse);
		}
		virtualMouse = instance_create(0,0,obj_virtual_mouse);
	
		virtualMouse.mode = _mouseMode;
	
		if(_gui){
			virtualMouse.mouseX = display_get_gui_width() div 2;
			virtualMouse.mouseY = display_get_gui_height() div 2;
		}
		else{
			virtualMouse.mouseX = x;
			virtualMouse.mouseY = y;
		}
		
		virtualMouse.gui = _gui;
	}
}