///Destroy

for(var i = 0; i < scr_linked_list_size(objects); i++){
    var _destroyThis = scr_linked_list_remove_next(objects);
    scr_destroy_instance(_destroyThis);
}

scr_linked_list_destroy(objects);

