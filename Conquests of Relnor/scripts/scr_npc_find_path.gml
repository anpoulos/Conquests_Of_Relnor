///scr_npc_find_path(npc, destinationX, destinationY)

if( mp_grid_path(global.aiGrid, argument0.path, argument0.x, argument0.y,
                    argument1, argument2, true) ){
    path_set_kind(path, 1);
    path_set_precision(path, 1);
    return true;
}
return false;
