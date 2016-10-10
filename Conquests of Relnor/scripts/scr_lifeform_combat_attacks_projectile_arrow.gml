///scr_lifeform_combat_attacks_projectile_arrow

image_speed = self.attackImageSpeed;

var _oX = 0;
var _oY = 0;

sprite_index = attackSprite[self.face4Way];

switch(self.face8Way){
    case FACE_RIGHT:
        _oX = 400;
    break;
    
    case FACE_LEFT:
        _oX = -400;
    break;
    
    case FACE_UPPERRIGHT:
        _oY = -300;
        _oX = 300;
    break;
    case FACE_UPPERLEFT:
        _oY = -300;
        _oX = -300;
    break;
    case FACE_UP:
        _oY = -400;
    break;
    
    case FACE_DOWNRIGHT:
        _oX = 300;
        _oY = 300;
    break;
    case FACE_DOWNLEFT:
        _oX = -300;
        _oY = 300;
    break;
    case FACE_DOWN:
        _oY = 400;
    break;
}

if (!attacked && image_index >= 3){
    var dmg = 5;
    var _arrowOffsetX = x;
    var _arrowOffsetY = y-10;
    var _arrow = scr_lifeform_damage_create(_arrowOffsetX,_arrowOffsetY,
    obj_damage_projectile_arrow, dmg, 
    self, _arrowOffsetX+_oX, _arrowOffsetY+_oY);
    _arrow.sprite_index = _arrow.sprites[self.face8Way];
    scr_lifeform_damage_projectile_fire(_arrow);
    attacked = true;
}
