///scr_player_command_select(commander, obj)
var _commander = argument0;
var obj = argument1;
    if(!obj.selected){
        if((_commander.allegiance == obj.allegiance &&
        _commander.allegianceRank[_commander.allegiance] > obj.allegianceRank[_commander.allegiance]) 
        || obj.allegiance == ALLEGIANCE_NEUTRAL){
            _commander.commandModule.mouseCommand = scr_player_commands_move_all;
            obj.selected = true;
            obj.commander = _commander;
            scr_linked_list_add(_commander.commandModule.selected, argument1);
            _commander.commandModule.totalSelected += 1;
            _commander.CommandMenuContainer.isVisible = true;
            _commander.CommandInformationMenuContainer.isVisible = true;
            _commander.PassiveMenuContainer.isVisible = true;            
            if(obj.isAggressive){
                _commander.commandModule.totalSelectedWithEngage += 1;
            }
            if(obj.wanderDistance > 0){
                _commander.commandModule.totalSelectedWithWander += 1;
            }
            if(obj.isDefensive){
                _commander.commandModule.totalSelectedWithDefense += 1;
            }
            scr_lifeform_update_health_bar(obj);
            with(_commander){
                scr_player_gui_update_command_selected(false);
            }
        }
    }
