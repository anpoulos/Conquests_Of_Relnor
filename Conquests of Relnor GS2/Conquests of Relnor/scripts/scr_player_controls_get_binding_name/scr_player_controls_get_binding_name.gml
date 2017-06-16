
///@param triggerBinding

if(argument0 == 0){
	return "--";
}

var _letters = scr_linked_list_create();
scr_linked_list_add(_letters, "A");
scr_linked_list_add(_letters, "B");
scr_linked_list_add(_letters, "C");
scr_linked_list_add(_letters, "D");
scr_linked_list_add(_letters, "E");
scr_linked_list_add(_letters, "F");
scr_linked_list_add(_letters, "G");
scr_linked_list_add(_letters, "H");
scr_linked_list_add(_letters, "I");
scr_linked_list_add(_letters, "J");
scr_linked_list_add(_letters, "K");
scr_linked_list_add(_letters, "L");
scr_linked_list_add(_letters, "M");
scr_linked_list_add(_letters, "N");
scr_linked_list_add(_letters, "O");
scr_linked_list_add(_letters, "P");
scr_linked_list_add(_letters, "Q");
scr_linked_list_add(_letters, "R");
scr_linked_list_add(_letters, "S");
scr_linked_list_add(_letters, "T");
scr_linked_list_add(_letters, "U");
scr_linked_list_add(_letters, "V");
scr_linked_list_add(_letters, "W");
scr_linked_list_add(_letters, "X");
scr_linked_list_add(_letters, "Y");
scr_linked_list_add(_letters, "Z");

var _totalLetters = scr_linked_list_size(_letters);

for(var i = 0; i < _totalLetters; i++){
	var _letter = scr_linked_list_get_next(_letters);
	if(ord(_letter) == argument0){
		return _letter;
	}
}

switch(argument0){
	case vk_lalt: return "Left Alt";
	case vk_ralt: return "Right Alt";
	case vk_alt: return "Alt";
	case vk_lcontrol: return "Left Ctrl";
	case vk_rcontrol: return "Right Ctrl"
	case vk_control: return "Ctrl";
	case vk_down: return "Down Arrow";
	case vk_enter: return "Return";
	case vk_escape: return "Escape";
	case vk_lshift: return "Left Shift";
	case vk_rshift: return "Right Shift";
	case vk_shift: return "Shift";
	case vk_space: return "Space";
	case vk_tab: return "Tab";
	case vk_up: return "Up Arrow";
	case vk_left: return "Left Arrow";
	case vk_right: return "Right Arrow";
	default: return "Binding Name Not Found";
}

