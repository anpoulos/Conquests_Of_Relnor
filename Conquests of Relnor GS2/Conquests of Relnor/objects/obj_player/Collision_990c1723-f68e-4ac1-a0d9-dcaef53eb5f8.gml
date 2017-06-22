///Run Door Script

if(!isBusy && triggers[TRIGGER_USE]){
    other.player = self;
    with(other){
        script_execute(doorCheckScript);
    }
}

