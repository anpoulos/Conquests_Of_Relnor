///scr_player_command_deselect(commander, obj)
var _commander = argument0;
var obj = argument1;

if(_commander.commandModule.selected[obj.uniqueId]){
    obj.selected = false;
    _commander.commandModule.selected[obj.uniqueId] = false;
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
}

