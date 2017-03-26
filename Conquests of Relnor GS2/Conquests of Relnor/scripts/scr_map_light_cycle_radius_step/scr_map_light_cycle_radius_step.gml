///@param target

if(radius < argument0){
	radius += radiusIncrement;
	if(radius > argument0){
		radius = argument0;
	}
}
else if(radius > argument0){
	radius -= radiusDecrement;
	if(radius < argument0){
		radius = argument0;
	}
}