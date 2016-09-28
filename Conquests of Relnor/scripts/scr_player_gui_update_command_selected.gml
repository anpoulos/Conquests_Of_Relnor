///scr_player_gui_update_command_selected

self.TotalSelectedText.text = string_insert(
string(self.commandModule.totalSelected), "Total Selected: ",17);

self.TotalEngagedText.text = string_insert(
string(self.commandModule.totalSelectedWithEngage), "Total Aggressive: ",20);

self.TotalWanderText.text = string_insert(
string(self.commandModule.totalSelectedWithWander), "Total Wandering: ",18);

self.TotalDefenseText.text = string_insert(
string(self.commandModule.totalSelectedWithDefense), "Total Defensive: ",18);
