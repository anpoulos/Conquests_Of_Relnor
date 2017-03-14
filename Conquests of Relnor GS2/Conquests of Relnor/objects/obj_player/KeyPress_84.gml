///T Pressed

if(scr_player_talk_to_closest()){

}
else{
    for(i = 0; i < instance_number(obj_map_door_invisible); i++){
        var _doorInvisible = instance_find(obj_map_door_invisible, i);
        if( (x <= _doorInvisible.rightX && x >= _doorInvisible.leftX) && 
            (y <= _doorInvisible.bottomY && y >= _doorInvisible.topY) ){
                _doorInvisible.player = self;
                with(_doorInvisible){
                    script_execute(doorOpenedScript);
                }
        }
    }
}


