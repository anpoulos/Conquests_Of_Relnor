///scr_lifeform_combat_attacks_melee_small

image_speed = self.attackImageSpeed;

var _oX = 0;
var _oY = 0;

sprite_index = attackSprite[self.face4Way];

switch(self.face8Way){
    case FACE_RIGHT:
        _oX = 80;
    break;
    
    case FACE_LEFT:
        _oX = -80;
    break;
    
    case FACE_UPPERRIGHT:
        _oY = -60;
        _oX = 60;
    break;
    case FACE_UPPERLEFT:
        _oY = -60;
        _oX = -60;
    break;
    case FACE_UP:
        _oY = -80;
    break;
    
    case FACE_DOWNRIGHT:
        _oX = 60;
        _oY = 60;
    break;
    case FACE_DOWNLEFT:
        _oX = -60;
        _oY = 60;
    break;
    case FACE_DOWN:
        _oY = 80;
    break;
}

if (!attacked && image_index >= 3){
    var dmg = 2;
    if(isPlayer)
        dmg = 5;
    scr_lifeform_damage_create(x,y,obj_damage_melee_medium, dmg, 
    self, x+_oX, y+_oY);
    attacked = true;
}
