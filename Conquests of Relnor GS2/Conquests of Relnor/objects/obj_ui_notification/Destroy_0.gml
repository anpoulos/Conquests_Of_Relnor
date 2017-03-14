///Destroy

for(var i = 0; i < scr_linked_list_size(objects); i++){
    scr_destroy_instance(scr_linked_list_remove_next(objects));
}

scr_linked_list_destroy(objects);

