///@Description Will return the name of a stat
///@param statType The stat type
///@param statIndex The index of the specific stat

var _statType = argument0;
var _statIndex = argument1;

if(_statIndex == noone){
	switch(_statType){
		case STATS_COMMANDING: return "Commanding";
		case STATS_PHYSICAL: return "Physical"
		case STATS_INTELLIGENCE: return "Intelligence";
		case STATS_TOOLS: return "Tools";
		default: return "STAT NAME NOT FOUND";
	}
}

switch(_statType){
	case STATS_COMMANDING:
		switch(_statIndex){
			case STATS_COMMANDING_DISCIPLINE: return "Discipline";
			case STATS_COMMANDING_INSPIRATION: return "Inspiration";
		}
	break;
	
	case STATS_INTELLIGENCE:
		switch(_statIndex){
			case STATS_INTELLIGENCE_INTERPRETATION: return "Interpretation";
			case STATS_INTELLIGENCE_LANGUAGES: return "Languages";
		}
	break;
	
	case STATS_PHYSICAL:
		switch(_statIndex){
			case STATS_PHYSICAL_ENERGY: return "Energy";
			case STATS_PHYSICAL_HEALTH: return "Health";
			case STATS_PHYSICAL_STRENGTH: return "Strength";
		}
	break;
	
	case STATS_TOOLS:
		switch(_statIndex){
			case STATS_TOOLS_BOWS: return "Bow";
			case STATS_TOOLS_BLADES: return "Blade";
			case STATS_TOOLS_SHIELDS: return "Shield";
			case STATS_TOOLS_BLUNTS: return "Blunt";
		}
	break;
	
	default:
		return "STAT_NOT_FOUND";
	break;
}