
for(var i = 0; i < RELNOR_MAX_CELLS; i++){
	for(var j = 0; j < RELNOR_MAX_CELLS; j++){
		rooms[i,j] = noone;
	}
}

rooms[24,25] = rm_relnor_24_25_blavish;
rooms[25,23] = rm_relnor_25_23;
rooms[25,24] = rm_relnor_25_24_blavish_NE;
rooms[25,25] = rm_relnor_25_25_blavish;
rooms[26,23] = rm_relnor_26_23;