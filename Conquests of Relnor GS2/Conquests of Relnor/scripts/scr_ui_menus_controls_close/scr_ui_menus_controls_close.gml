with(obj_ui_binding_input){
	instance_destroy();
}

instance_destroy(ControlMenuContainer);
scr_linked_list_destroy_all(ControlMenuButtons);
PauseMenuContainer.isVisible = true;