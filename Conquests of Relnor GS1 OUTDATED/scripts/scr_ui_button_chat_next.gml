///scr_ui_button_chat_next


for(var i = 0; i < 4; i++){
    if(!is_undefined(scr_linked_list_peak(allLines))){
        lines[i].text = scr_linked_list_remove_next(allLines);
    }
    else{
        lines[i].text = "";
    }
}

if(scr_linked_list_size(allLines) <= 0){
    scr_destroy_instance(NextButton);
    return false;
}


