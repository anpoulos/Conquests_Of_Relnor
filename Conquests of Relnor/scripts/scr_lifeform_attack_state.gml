image_speed = self.attackImageSpeed;

var dmgOffsetX = 0;
var dmgOffsetY = 0;


if(sprite_index == sprites[DOWN]){
    sprite_index = attackSprite[DOWN];
    dmgOffsetX = x;
    dmgOffsetY = y+14;
}
else if(sprite_index == sprites[LEFT]){
    sprite_index = attackSprite[LEFT];
    dmgOffsetX = x-12;
    dmgOffsetY = y+2;
}
else if(sprite_index == sprites[RIGHT]){
//    sprite_index = attackSprite[RIGHT];
    dmgOffsetX = x+12;
    dmgOffsetY = y+2;
}
else if(sprite_index == sprites[UP]){
    sprite_index = attackSprite[UP];
    dmgOffsetX = x;
    dmgOffsetY = y-10;
}

if (!attacked && image_index >= 3){
    var dmgOffsetX = 0;
    var dmgOffsetY = 0;
    
    if(sprite_index == attackSprite[DOWN]){
        dmgOffsetX = x;
        dmgOffsetY = y+12;
    }
    else if(sprite_index == attackSprite[LEFT]){
        dmgOffsetX = x-10;
        dmgOffsetY = y+2;
    }
    else if(sprite_index == attackSprite[UP]){
        dmgOffsetX = x;
        dmgOffsetY = y-10;
    }
    else if(sprite_index == attackSprite[RIGHT]){
        dmgOffsetX = x+12;
        dmgOffsetY = y+2;
    }

    var dmg = instance_create(dmgOffsetX,dmgOffsetY, obj_Lifeform_Damage);
    dmg.source = self;
    dmg.amount = 1;
    dmg.knockback = 10;
    attacked = true;
}
