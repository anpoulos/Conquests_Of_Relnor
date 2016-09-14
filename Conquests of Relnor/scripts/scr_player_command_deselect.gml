///scr_player_command_deselect(commander, obj)
var _commander = argument0;
var obj = argument1;

if(_commander.selected[obj.uniqueId]){
    obj.selected = false;
    _commander.selected[obj.uniqueId] = false;
    _commander.totalSelected -= 1;
    if(_commander.totalSelected <= 0){
        _commander.CommandMenuContainer.isVisible = false;
    }
}

