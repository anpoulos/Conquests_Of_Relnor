
for(var i = 0; i < commandModule.totalSelected; i++){
    var _npc = scr_linked_list_get_next(commandModule.selected);
    scr_npc_combat_lock_target(_npc, commandModule.attackTarget);
}

commandModule.mouseCommand = noone;
commandModule.attackTarget = noone;