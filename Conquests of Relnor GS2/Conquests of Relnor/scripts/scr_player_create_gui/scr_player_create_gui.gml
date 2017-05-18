///scr_player_create_gui

InventoryInfoContainerItemStats = instance_create(x,y,obj_ui_party_inventory_item_info);

ClickedUIObjects = scr_linked_list_create();
ControlMenuContainer = noone;
SaveGameMenuContainer = noone;
PauseText = noone;
PlayerInformationHealthBar = noone;
PauseMenuContainer = noone;
MoveItemButtonClicked = false;
MoveItem = noone;
MoveItemButtonCurrent = noone;
NextCharacterButton = noone;
PauseMenuStatsTreeObjects = scr_linked_list_create();
PauseMenuOptionsContainer = noone;

scr_player_gui_create_player_information();

scr_player_gui_create_command_menu();

scr_player_gui_create_command_selected_menu();

scr_player_gui_create_passive_menu();

PlayerInformationMenuContainer.isVisible = true;

