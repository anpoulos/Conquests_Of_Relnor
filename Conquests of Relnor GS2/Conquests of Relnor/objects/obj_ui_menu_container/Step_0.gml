///Step Script Check
if(self.stepScript != noone){
    script_execute(self.stepScript);
}

for(var i = 0; i < scr_linked_list_size(objects); i++){
	var _object = scr_linked_list_peak(objects);
	if(!instance_exists(_object)){
		scr_linked_list_remove_next(objects);
	}
	else{
		scr_linked_list_get_next(objects);
	}
}