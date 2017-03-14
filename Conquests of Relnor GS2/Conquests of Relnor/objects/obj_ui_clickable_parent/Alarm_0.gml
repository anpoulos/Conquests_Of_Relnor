///Clicked Delay Alarm
pressed = false;

if(self.clickedScript != noone){
    if(self.clickedAs != noone){
        var _script = clickedScript;
        with(self.clickedAs){
            script_execute(_script);
        }  
    }  
    else{
        script_execute(self.clickedScript);
    }
}

