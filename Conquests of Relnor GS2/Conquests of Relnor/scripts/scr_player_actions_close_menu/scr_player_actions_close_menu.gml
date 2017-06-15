///returns true if a menu was found and closed

var _totalClickables = instance_number(obj_ui_button);
for(var i = 0; i < _totalClickables; i ++){
	var _clickable = instance_find(obj_ui_button, i);
	if(scr_ui_draw_is_visible(_clickable)){// && _clickable.menuContainer != PauseMenuOptionsContainer){
		switch(_clickable.text){
			case "X":
			case "x":
			case "Close":
			case "Close Menu":
			case "close":
			case "close menu":
				with(_clickable){
					scr_ui_draw_clickable_clicked();
				}
				return true;
			break;
		}
	}
}

return false;