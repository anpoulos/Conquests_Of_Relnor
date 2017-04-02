
objects[0] = noone;
objectsHeight[0] = 0;
objectsWidth[0] = 0;

sparsity = 0.01;
tries = 5;

leftX = x - (sprite_get_width(sprite_index)/2)*image_xscale;
rightX = x + (sprite_get_width(sprite_index)/2)*image_xscale;
topY = y - (sprite_get_height(sprite_index)/2)*image_yscale;
bottomY = y + (sprite_get_height(sprite_index)/2)*image_yscale;

roomId = scr_room_get_id(room);

masterIndex = 0;