image_speed = self.attackImageSpeed;

var dmgOffsetX = 0;
var dmgOffsetY = 0;

if(sprite_index == sprites[DOWN] || sprite_index == attackSprite[DOWN]){
    sprite_index = attackSprite[DOWN];
    dmgOffsetX = x;
    dmgOffsetY = y+40;
}
else if(sprite_index == sprites[LEFT] || sprite_index == attackSprite[LEFT]){
    sprite_index = attackSprite[LEFT];
    dmgOffsetX = x-30;
    dmgOffsetY = y+10;
}
else if(sprite_index == sprites[RIGHT] || sprite_index == attackSprite[RIGHT]){
    sprite_index = attackSprite[RIGHT];
    dmgOffsetX = x+30;
    dmgOffsetY = y+10;
}
else if(sprite_index == sprites[UP] || sprite_index == attackSprite[UP]){
    sprite_index = attackSprite[UP];
    dmgOffsetX = x;
    dmgOffsetY = y-20;
}

if (!attacked && image_index >= 3){
    var dmg = instance_create(dmgOffsetX,dmgOffsetY, obj_Lifeform_Damage);
    dmg.source = self;
    dmg.amount = 1;
    dmg.knockback = 10;
    attacked = true;
}
