
event_inherited();

daySprite = noone;
nightSprite = noone;
xOffset = 0;
yOffset = 0;

scr_linked_list_add(global.additiveLights, self);

scr_map_light_calculate_dimensions();
scr_map_light_cycle_calc_light();