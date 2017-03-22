///@param owner

var _owner = argument0;

switch(irandom(4)){
	case 0: return scr_consumable_bread(_owner);
	case 1: return scr_consumable_cheese(_owner);
	case 2: return scr_consumable_beef(_owner);
	case 3: return scr_consumable_fish(_owner);
	case 4: return scr_consumable_apple(_owner);
}