///@param target

if(dayOpacity < argument0){
	dayOpacity += opacityIncrement;
	if(dayOpacity > argument0){
		dayOpacity = argument0;
	}
}
else if(dayOpacity > argument0){
	dayOpacity -= opacityDecrement;
	if(dayOpacity < argument0){
		dayOpacity = argument0;
	}
}