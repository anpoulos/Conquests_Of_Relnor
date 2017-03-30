
commandModule.followTarget = noone;
	
if(!commandModule.followButtonClicked){
	commandModule.followButtonClicked = true;
	commandModule.mouseCommand = scr_player_commands_follow;
}
else{
	commandModule.followButtonClicked = false;
	commandModule.mouseCommand = noone;
}