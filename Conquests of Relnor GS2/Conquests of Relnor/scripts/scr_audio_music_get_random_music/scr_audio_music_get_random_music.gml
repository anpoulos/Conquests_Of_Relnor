///@param music_type

switch(argument0){
	case MUSIC_TYPE_EXPLORE:
		switch(irandom(4)){
			case 0: return sound_music_explore_0;
			case 1: return sound_music_explore_1;
			case 2: return sound_music_explore_2;
			case 3: return sound_music_explore_3;
			case 4: return sound_music_explore_4;
		}	
	break;
	
	case MUSIC_TYPE_TOWN_INTERIOR:
		switch(irandom(3)){
			case 0: return music_town_interior_0;
			case 1: return music_town_interior_1;
			case 2: return music_town_interior_2;
			case 3: return music_town_interior_3;
		}
	break;
	
	case MUSIC_TYPE_TOWN:
		switch(irandom(3)){
			case 0: return music_town_0;
			case 1: return music_town_1;
			case 2: return music_town_2;
			case 3: return music_town_3;
		}
	break;
	
	case MUSIC_TYPE_SHOP:
		switch(irandom(4)){
			case 0: return music_shop_0;
			case 1: return music_shop_1;
			case 2: return music_shop_2;
			case 3: return music_shop_3;
			case 4: return music_shop_4;
		}
	break;

	case MUSIC_TYPE_TITLE:
		return sound_music_title_mozart_k361_adagio;
	break;
	
	case MUSIC_TYPE_GRASSLANDS:
		switch(irandom(4)){
			case 0: return music_grasslands_0;
			case 1: return music_grasslands_1;
			case 2: return music_grasslands_2;
			case 3: return music_grasslands_3;
			case 4: return music_grasslands_4;
		}
	break;
	
	case MUSIC_TYPE_BATTLE:
		switch(irandom(3)){
			case 0: return music_battle_0;
			case 1: return music_battle_1;
			case 2: return music_battle_2;
			case 3: return music_battle_3;
		}
	break;
}