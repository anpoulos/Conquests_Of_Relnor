/// @description Insert description here
// You can write your code in this editor

cellX = scr_map_square_get_cell_coordinate(x);
cellY = scr_map_square_get_cell_coordinate(y);

x = scr_map_square_get_transformed_coordinate(cellX);
y = scr_map_square_get_transformed_coordinate(cellY);

color = c_gray;

hasTurn = true;
allegiance = ALLEGIANCE_NEUTRAL;

uiObjects = scr_linked_list_create();