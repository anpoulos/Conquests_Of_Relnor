///scr_player_commands_selected_disable_defense

scr_player_command_apply_script_to_all_selected(scr_npc_commands_disable_defense);
self.commandModule.totalSelectedWithDefense = 0;
scr_player_gui_update_command_selected();

