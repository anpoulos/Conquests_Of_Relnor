
if(x < autoTarget.x){
	return autoTarget.x + autoTarget.size;
}
else if (x > autoTarget.x){
	return autoTarget.x - autoTarget.size;
}
else{
	return autoTarget.x;
}