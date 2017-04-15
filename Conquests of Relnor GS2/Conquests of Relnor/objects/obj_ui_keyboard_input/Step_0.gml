/// @description Insert description here
// You can write your code in this editor

if(keyboard_lastkey != -1){
	switch(keyboard_lastkey){
		case vk_backspace:
			var _stringLength = string_length(currentText);
			if(_stringLength > 0){
				currentText = string_copy(currentText, 0, _stringLength - 1);
			}
		break;
		
		case ord("A"):
		case ord("B"):
		case ord("C"):
		case ord("D"):
		case ord("E"):
		case ord("F"):
		case ord("G"):
		case ord("H"):
		case ord("I"):
		case ord("J"):
		case ord("K"):
		case ord("L"):
		case ord("M"):
		case ord("N"):
		case ord("O"):
		case ord("P"):
		case ord("Q"):
		case ord("R"):
		case ord("S"):
		case ord("T"):
		case ord("U"):
		case ord("V"):
		case ord("W"):
		case ord("X"):
		case ord("Y"):
		case ord("Z"):
		case vk_space:
			if(string_length(currentText) < 20){
				currentText += keyboard_lastchar;
			}
		break;
	}
   keyboard_lastkey = -1;
}

uiText.text = currentText;

var _cursorOffset = uiText.x + string_width(currentText)*2.25;
TextCursorLine.x1 = _cursorOffset;
TextCursorLine.x2 = _cursorOffset;