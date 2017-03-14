///Destroy

scr_destroy_instance(self.commandModule);
scr_linked_list_destroy(self.Menus);
self.view.target = noone;


event_inherited();

