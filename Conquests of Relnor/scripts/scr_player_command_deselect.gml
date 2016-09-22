///scr_player_command_deselect(commander, obj)
var _commander = argument0;
var obj = argument1;
            
            with(argument0){
                scr_player_commands_reset();
            }

            obj.commander = noone;
            obj.selected = false;
            obj.healthBar.isVisible = false;
            _commander.commandModule.totalSelected -= 1;
            if(_commander.commandModule.totalSelected <= 0){
                _commander.CommandMenuContainer.isVisible = false;
                _commander.CommandInformationMenuContainer.isVisible = false;
            }
            if(_commander.allegianceRank[_commander.allegiance] > obj.allegianceRank[_commander.allegiance]){
                if(obj.isAggressive){
                    _commander.commandModule.totalSelectedWithEngage -= 1;
                }
                if(obj.wanderDistance > 0){
                    _commander.commandModule.totalSelectedWithWander -= 1;
                }
            }
            with(_commander){
                scr_player_command_update_gui();
            }   

