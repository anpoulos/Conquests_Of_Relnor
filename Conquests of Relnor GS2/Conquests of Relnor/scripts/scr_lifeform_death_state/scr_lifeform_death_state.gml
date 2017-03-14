///scr_lifeform_death_state()

var _body = instance_create(x,y,obj_lifeform_body);
_body.deadSprite = self.deadSprite;

instance_destroy();
