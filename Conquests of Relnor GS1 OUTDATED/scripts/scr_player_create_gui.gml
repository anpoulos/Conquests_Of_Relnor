///scr_player_create_gui

Menus = scr_linked_list_create();
ClickedUIObjects = scr_linked_list_create();
ControlMenuContainer = noone;
SaveGameMenuContainer = noone;
PauseText = noone;
PlayerInformationHealthBar = noone;

scr_player_gui_create_player_information();
scr_linked_list_add(Menus, PlayerInformationMenuContainer);

scr_player_gui_create_command_menu();
scr_linked_list_add(Menus, CommandMenuContainer);

scr_player_gui_create_command_selected_menu();
scr_linked_list_add(Menus, CommandInformationMenuContainer);

scr_player_gui_create_passive_menu();
scr_linked_list_add(Menus, PassiveMenuContainer);



PlayerInformationMenuContainer.isVisible = true;

