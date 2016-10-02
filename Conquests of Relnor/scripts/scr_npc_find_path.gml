///scr_npc_find_path(npc, path, destinationX, destinationY)


if(mp_grid_path(global.aiGrid, argument1, argument0.x, argument0.y,
                    argument2, argument3, true) ){
    path_set_kind(path, 1);
    path_set_precision(path, 1);
    return true;
}


return false;
