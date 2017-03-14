///Damage whatever is touched and destroy self

scr_damage_lifeform(other, self.source, self);

if(instance_exists(other) && instance_exists(self.source) && 
                            other.allegiance != self.source.allegiance){
    instance_destroy();
}

