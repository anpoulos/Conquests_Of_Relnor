/// @description Insert description here
// You can write your code in this editor

if(scroll){
	scrollTextCounter += 1;

	if(scrollTextCounter % 10){
		scrollTextCounter = 0;
		if(text != fullText){
			var _textLength = string_length(text);
			text = string_copy(fullText, 1, _textLength+1);
		}

	}
}
