/// @description Insert description here
// You can write your code in this editor

var _offset = 40;

instance_create(x-_offset, y, obj_map_ruin_random_pillar);
instance_create(x-_offset, y+_offset, obj_map_ruin_random_pillar);
instance_create(x-_offset, y+_offset*2, obj_map_ruin_random_pillar);
instance_create(x-_offset, y-_offset*2, obj_map_ruin_random_pillar);
instance_create(x-_offset, y-_offset, obj_map_ruin_random_pillar);

instance_create(x+_offset, y, obj_map_ruin_random_pillar);
instance_create(x+_offset, y+_offset, obj_map_ruin_random_pillar);
instance_create(x+_offset, y+_offset*2, obj_map_ruin_random_pillar);
instance_create(x+_offset, y-_offset*2, obj_map_ruin_random_pillar);
instance_create(x+_offset, y-_offset, obj_map_ruin_random_pillar);

instance_create(x, y-_offset*2, obj_map_ruin_random_pillar);
instance_create(x, y+_offset*2, obj_map_ruin_random_pillar);

