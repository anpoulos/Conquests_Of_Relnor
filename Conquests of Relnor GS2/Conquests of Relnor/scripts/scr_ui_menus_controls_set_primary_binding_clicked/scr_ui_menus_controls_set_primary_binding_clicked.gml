///used as button
///tempVal is trigger

with(obj_ui_binding_input){
	instance_destroy();
}

var _bindingInput = instance_create(0,0,obj_ui_binding_input);

_bindingInput.button = self;
_bindingInput.bindingIndex = tempVal;
_bindingInput.isExtraBinding = false;
_bindingInput.menuContainer = global.player.ControlMenuContainer;

scr_linked_list_add(global.player.ControlMenuButtons, _bindingInput);