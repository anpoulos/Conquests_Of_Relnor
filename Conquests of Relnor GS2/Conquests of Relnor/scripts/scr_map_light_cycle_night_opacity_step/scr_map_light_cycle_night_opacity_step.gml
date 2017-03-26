///@param target

if(nightOpacity < argument0){
	nightOpacity += 0.01;
	if(nightOpacity > argument0){
		nightOpacity = argument0;
	}
}
else if(nightOpacity > argument0){
	nightOpacity -= 0.01;
	if(nightOpacity < argument0){
		nightOpacity = argument0;
	}
}