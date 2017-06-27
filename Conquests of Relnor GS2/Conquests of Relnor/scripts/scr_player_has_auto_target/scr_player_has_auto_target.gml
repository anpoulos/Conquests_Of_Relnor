
if(autoTarget == noone){
	return false;
}

if(!instance_exists(autoTarget) || autoTarget.isDead){
	autoTarget = noone;
	return false;
}

return true;