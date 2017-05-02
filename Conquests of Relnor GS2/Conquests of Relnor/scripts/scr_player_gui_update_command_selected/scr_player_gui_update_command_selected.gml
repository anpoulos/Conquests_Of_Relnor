///scr_player_gui_update_command_selected(boolean recountTotals)
///@param recountTotals


if(argument0){
    commandModule.totalSelectedWithEngage = 0;
    commandModule.totalSelectedWithWander = 0;
    commandModule.totalSelectedWithDefense = 0;
	
    for(var i = 0; i < commandModule.totalSelected; i++){
        var _currentNPC = scr_linked_list_get_next(commandModule.selected);
        if(_currentNPC.isAggressive){
            commandModule.totalSelectedWithEngage += 1;
        }
        if(_currentNPC.wanderDistance > 0){
            commandModule.totalSelectedWithWander += 1;   
        }
        if(_currentNPC.isDefensive){
            commandModule.totalSelectedWithDefense += 1;
        }
    }
}

TotalSelectedText.text = "Total Selected: "+string(commandModule.totalSelected);

TotalEngagedText.text = "Total Aggressive: " + string(commandModule.totalSelectedWithEngage);

TotalWanderText.text = "Total Wandering: "+string(commandModule.totalSelectedWithWander);

TotalDefenseText.text = "Total Defensive: "+string(commandModule.totalSelectedWithDefense);
