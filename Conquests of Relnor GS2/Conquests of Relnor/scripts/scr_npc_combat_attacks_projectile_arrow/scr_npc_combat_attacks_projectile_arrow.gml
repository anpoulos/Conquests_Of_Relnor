///scr_npc_combat_attacks_projectile_arrow

image_speed = self.attackImageSpeed;

sprite_index = attackSprite[self.face4Way];

if (!attacked && image_index >= 3){
    var dmg = 1;
    var _arrowOffsetX = x;
    var _arrowOffsetY = y-10;
    var _arrow = scr_lifeform_damage_create(_arrowOffsetX,_arrowOffsetY,
        obj_damage_projectile_arrow, dmg, 
        self, target.x, target.y);

    _arrow.sprite_index = _arrow.sprites[self.face8Way];
    
    scr_lifeform_damage_projectile_physical_fire(_arrow);
    attacked = true;
}
