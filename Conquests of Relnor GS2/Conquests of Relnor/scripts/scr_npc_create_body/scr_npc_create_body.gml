///@param npc

with(argument0){
	phy_active = false;
	image_speed = 0;
	isDead = true;
	autoDeadSprite = self.sprites[LEFT];
	if(irandom(1) == 1){
		autoDeadSprite = self.sprites[RIGHT];
	}
}

