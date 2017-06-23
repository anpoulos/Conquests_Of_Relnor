///@param binding

if(argument0 == 0){
	return "--";
}

switch(argument0){
	case gp_face1: return "A Button";
	case gp_face2: return "B Button";
	case gp_face3: return "X Button";
	case gp_face4: return "Y Button";
	case gp_shoulderl: return "Left Button";
	case gp_shoulderlb: return "Left Trigger";
	case gp_shoulderr: return "Right Button";
	case gp_shoulderrb: return "Right Trigger";
	case gp_select: return "Select";
	case gp_start: return "Start";
	case gp_stickl: return "Left Stick Press Down";
	case gp_stickr: return "Right Stick Press Down";
	case gp_padu: return "Up";
	case gp_padd: return "Down"
	case gp_padl: return "Left";
	case gp_padr: return "Right";
	default: return "Binding Name Not Found";
}