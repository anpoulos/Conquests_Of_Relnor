scr_item_equipment_parent_use();

if(flame != noone){
	instance_destroy(flame);
	flame = noone;
}
flame = instance_create(owner.x, owner.y, flameObject);