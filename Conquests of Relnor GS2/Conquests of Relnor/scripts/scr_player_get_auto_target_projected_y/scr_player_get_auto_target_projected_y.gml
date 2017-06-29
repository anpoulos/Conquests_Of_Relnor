
if(y < autoTarget.y){
	return autoTarget.y + autoTarget.size;
}
else if (y > autoTarget.y){
	return autoTarget.y - autoTarget.size;
}
else{
	return autoTarget.y;
}