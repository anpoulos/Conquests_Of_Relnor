///scr_npc_combat_attacks_melee_fists

image_speed = self.attackImageSpeed;

sprite_index = attackSprite[self.face4Way];

if (!attacked && image_index >= 3){
    var dmg = 1;
    scr_lifeform_damage_create(x,y,obj_damage_melee_small, dmg, 
    self, target.x, target.y);
    attacked = true;
}
