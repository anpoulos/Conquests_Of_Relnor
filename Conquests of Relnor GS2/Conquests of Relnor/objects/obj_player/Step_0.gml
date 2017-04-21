///Inherited

event_inherited();

///Update Player GUI
scr_player_gui_update_information();

if(combatCheckCount == 0){
	combatCheckCount = -1;
	global.mapControl.musicType = global.mapControl.mapMusicType;
	audio_sound_gain(global.mapControl.currentMusicIndex, 0, 1000);
}

