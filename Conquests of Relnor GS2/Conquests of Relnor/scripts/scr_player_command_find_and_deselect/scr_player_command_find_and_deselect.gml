///scr_player_command_find_and_deselect(commander, obj)

var _commander = argument0;
var _obj = argument1;

var _commandModuleSelected = _commander.commandModule.selected;
        
        for(var i = 0; i < _commander.commandModule.totalSelected; i++){
            var _peakedNPC = scr_linked_list_peak(_commandModuleSelected);
            if(_peakedNPC == _obj && _peakedNPC.selected){
                scr_player_command_deselect(_commander, _obj);
                scr_linked_list_remove_next(_commandModuleSelected);
                return true;
            }
            else{
                scr_linked_list_get_next(_commandModuleSelected);
            }
        }
