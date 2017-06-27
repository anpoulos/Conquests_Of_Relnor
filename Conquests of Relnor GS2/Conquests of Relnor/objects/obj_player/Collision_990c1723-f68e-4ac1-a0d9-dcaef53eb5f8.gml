///Run Door Script

if(isCharging){
	isCharging = false;
}

if(!isBusy && triggers[TRIGGER_USE]){
    other.player = self;
    with(other){
        script_execute(doorCheckScript);
    }
}

