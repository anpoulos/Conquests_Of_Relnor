///scr_player_command_update_gui

self.TotalSelectedText.text = string_insert(
string(self.commandModule.totalSelected), "Total Selected: ",17);

self.TotalEngagedText.text = string_insert(
string(self.commandModule.totalSelectedWithEngage), "Total Aggressive: ",20);

self.TotalWanderText.text = string_insert(
string(self.commandModule.totalSelectedWithWander), "Total Wandering: ",18);
