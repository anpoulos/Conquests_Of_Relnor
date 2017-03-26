///@param strengthTarget

if(strength < argument0){
	strength += strengthIncrement;
	if(strength > argument0){
		strength = argument0;
	}
}
else if(strength > argument0){
	strength -= strengthDecrement;
	if(strength < argument0){
		strength = argument0;
	}
}