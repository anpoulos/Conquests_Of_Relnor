///Draw objects

for(var i = 0; i < scr_linked_list_size(objects); i++){
    with(scr_linked_list_get_next(objects)){
        script_execute(self.drawScript);
    }
}

