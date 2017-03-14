///scr_player_combat_attacks_projectile_arrow

image_speed = self.attackImageSpeed;

var _x = mouse_x;
var _y = mouse_y;

scr_lifeform_face_towards(self, _x,_y);

sprite_index = attackSprite[self.face4Way];

if (!attacked && image_index >= 3){
    var dmg = 5;
    var _arrowOffsetX = x;
    var _arrowOffsetY = y-10;
    var _arrow = scr_lifeform_damage_create(_arrowOffsetX,_arrowOffsetY,
    obj_damage_projectile_arrow, dmg, 
    self, _x, _y);
    _arrow.sprite_index = _arrow.sprites[self.face8Way];
    scr_lifeform_damage_projectile_fire(_arrow);
    attacked = true;
}
