///scr_player_gui_update_command_selected(boolean recountTotals)

if(argument0){
    self.commandModule.totalSelectedWithEngage = 0;
    self.commandModule.totalSelectedWithWander = 0;
    self.commandModule.totalSelectedWithDefense = 0;
    for(var i = 0; i < scr_linked_list_size(commandModule.selected); i++){
        var _currentNPC = scr_linked_list_get_next(commandModule.selected);
        if(_currentNPC.isAggressive){
            self.commandModule.totalSelectedWithEngage += 1;
        }
        if(_currentNPC.wanderDistance > 0){
            self.commandModule.totalSelectedWithWander += 1;   
        }
        if(_currentNPC.isDefensive){
            self.commandModule.totalSelectedWithDefense += 1;
        }
    }
}

self.TotalSelectedText.text = string_insert(
string(self.commandModule.totalSelected), "Total Selected: ",17);

self.TotalEngagedText.text = string_insert(
string(self.commandModule.totalSelectedWithEngage), "Total Aggressive: ",20);

self.TotalWanderText.text = string_insert(
string(self.commandModule.totalSelectedWithWander), "Total Wandering: ",18);

self.TotalDefenseText.text = string_insert(
string(self.commandModule.totalSelectedWithDefense), "Total Defensive: ",18);
