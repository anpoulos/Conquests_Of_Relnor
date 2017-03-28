///Destroy

scr_destroy_instance(self.commandModule);
instance_destroy(InventoryInfoContainerItemStats);
instance_destroy(view);
scr_linked_list_destroy(self.Menus);
instance_destroy(ClickedUIObjects);

event_inherited();

