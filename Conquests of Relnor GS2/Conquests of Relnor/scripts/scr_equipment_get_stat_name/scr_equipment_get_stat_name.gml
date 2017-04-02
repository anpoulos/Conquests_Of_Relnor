///scr_equipment_get_stat_name

switch(argument0){
    case EQUIPMENT_STATS_DAMAGE:
    return "Damage";
    
    case EQUIPMENT_STATS_DEFENCE:
    return "Defence";
    
    case EQUIPMENT_STATS_RANGE:
    return "Reach";
    
    case EQUIPMENT_STATS_TYPE:
    return "Equipment Type";
    
    case EQUIPMENT_STATS_TOOL_TYPE:
    return "Tool Type";
	
	default:
	return "EQUIPMENT STAT NOT FOUND";
}
