///scr_lifeform_combat_attacks_melee

image_speed = self.attackImageSpeed;

var _oX = 0;
var _oY = 0;

sprite_index = attackSprite[self.face4Way];

switch(self.face8Way){
    case FACE_RIGHT:
        _oX = 40;
    break;
    
    case FACE_LEFT:
        _oX = -40;
    break;
    
    case FACE_UPPERRIGHT:
        _oY = -30;
        _oX = 30;
    break;
    case FACE_UPPERLEFT:
        _oY = -30;
        _oX = -30;
    break;
    case FACE_UP:
        _oY = -40;
    break;
    
    case FACE_DOWNRIGHT:
        _oX = 30;
        _oY = 30;
    break;
    case FACE_DOWNLEFT:
        _oX = -30;
        _oY = 30;
    break;
    case FACE_DOWN:
        _oY = 40;
    break;
}

if (!attacked && image_index >= 3){
    var dmg = 1;
    if(isPlayer)
        dmg = 5;
    scr_lifeform_damage_create(x,y,obj_lifeform_damage_melee, dmg, 
    self, x+_oX, y+_oY);
    attacked = true;
}
