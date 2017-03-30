pressed = false;

if(self.clickedScript != noone){
    if(self.clickedAs != noone){
        var _script = clickedScript;
		var _tempVal = tempVal;
        with(self.clickedAs){
			if(_tempVal != noone){
				tempVal = _tempVal;
			}
            script_execute(_script);
        }  
    }  
    else{
        script_execute(self.clickedScript);
    }
}