///@param owner

var _owner = argument0;

switch(irandom(2)){
	case 0: return scr_consumable_weak_health_potion(_owner);
	case 1: return scr_consumable_medium_health_potion(_owner);
	case 2: return scr_consumable_strong_health_potion(_owner);
}