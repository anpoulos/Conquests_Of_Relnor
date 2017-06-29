///Destroy

global.player = noone;

scr_destroy_instance(commandModule);
instance_destroy(InventoryInfoContainerItemStats);
instance_destroy(view);
instance_destroy(ClickedUIObjects);
instance_destroy(PauseMenuStatsTreeObjects);

event_inherited();

