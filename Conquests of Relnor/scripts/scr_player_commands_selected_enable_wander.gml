///scr_player_commands_selected_enable_wander
scr_player_command_apply_script_to_all_selected(scr_npc_commands_enable_wander);
self.commandModule.totalSelectedWithWander = self.commandModule.totalSelected;
scr_player_command_update_gui();
