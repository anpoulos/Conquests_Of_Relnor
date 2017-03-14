///Run Door Script

if(keyboard_check_pressed(ord("T"))){
    other.player = self;
    with(other){
        script_execute(doorCheckScript);
    }
}

