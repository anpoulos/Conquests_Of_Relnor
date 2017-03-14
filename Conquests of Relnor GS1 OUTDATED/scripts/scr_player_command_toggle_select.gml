///scr_player_command_select(commander, obj)
var _commander = argument0;
var obj = argument1;
    if(!obj.selected){
        if(_commander.allegianceRank[_commander.allegiance] > obj.allegianceRank[_commander.allegiance]){
            obj.selected = true;
            _commander.selected[obj.uniqueId] = true;
        }
    }
    else{
        obj.selected = false;
    }
