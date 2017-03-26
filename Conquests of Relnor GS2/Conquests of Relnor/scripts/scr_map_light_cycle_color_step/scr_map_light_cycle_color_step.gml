///@param target

for(var i = 0; i < 3; i++){
	if(color[i] < argument0[i]){
		color[i] += colorIncrement;
		if(color[i] > argument0[i]){
			color[i] = argument0;
		}
	}
	else if(color[i] > argument0[i]){
		color[i] -= colorDecrement;
		if(color[i] < argument0[i]){
			color[i] = argument0;
		}
	}
}