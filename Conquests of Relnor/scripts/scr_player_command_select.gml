///scr_player_command_select(commander, obj)
var _commander = argument0;
var obj = argument1;
    if(!obj.selected){
        if(_commander.allegianceRank[_commander.allegiance] > obj.allegianceRank[_commander.allegiance]){
            obj.selected = true;
            _commander.commandModule.selected[obj.uniqueId] = true;
            _commander.commandModule.totalSelected += 1;
            _commander.CommandMenuContainer.isVisible = true;
            _commander.CommandInformationMenuContainer.isVisible = true;
            if(obj.isAggressive){
                _commander.commandModule.totalSelectedWithEngage += 1;
            }
            if(obj.wanderDistance > 0){
                _commander.commandModule.totalSelectedWithWander += 1;
            }
            scr_lifeform_update_health_bar(obj);
            with(_commander){
                scr_player_command_update_gui();
            }
        }
    }
