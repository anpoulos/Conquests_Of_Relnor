///@param mouseMode
///@param gui

var _mouseMode = argument0;
var _gui = argument1;

with(global.player){
	if(global.triggersInput == TRIGGER_INPUT_TYPE_CONTROLLER){
		if(virtualMouse != noone){
			instance_destroy(virtualMouse);
		}
		virtualMouse = instance_create(0,0,obj_virtual_mouse);
	
		virtualMouse.mode = _mouseMode;
	
		if(_gui){
			var _x = display_get_gui_width() div 2;
			var _y = display_get_gui_height() div 2;
			
			if(_mouseMode == VIRTUAL_MOUSE_MODE_BUTTON){
		
				var _closestDistance = MAX;
				var _closestClickable = noone;
				
				with(obj_ui_clickable_parent){
					if(scr_ui_draw_is_visible(self) && clickedScript != noone){
						var _distance = point_distance(_x, _y, x,y);
						if(_distance < _closestDistance){
							_closestDistance = _distance;
							_closestClickable = self;
						}
					}					
				}
		
				if(_closestClickable != noone){
					virtualMouse.mouseX = _closestClickable.x;
					virtualMouse.mouseY = _closestClickable.y;
				}
				
			}
			else if(_mouseMode == VIRTUAL_MOUSE_MODE_MOUSE){
				virtualMouse.mouseX = _x;
				virtualMouse.mouseY = _y;
			}		
				
		}
		else{
			virtualMouse.mouseX = x;
			virtualMouse.mouseY = y;
		}
		
		virtualMouse.gui = _gui;
	}
}