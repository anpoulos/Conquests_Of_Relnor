///scr_equipment_create_iron_sword(owner)
///@param owner
var armor = scr_equipment_create(spr_armor_icon, noone, obj_inventory_equipment_parent, "Heavy Blue Armor", 40, 1000, 0, 50, 0, 0.01, argument0);

armor.equipmentStats[EQUIPMENT_STATS_TYPE] = EQUIPMENT_TYPE_ARMOR;
armor.equipmentStats[EQUIPMENT_STATS_TOOL_TYPE] = noone;

armor.sprite[DOWN] = spr_armor_heavy_blue_down;

armor.sprite[LEFT] = spr_armor_heavy_blue_left;

armor.sprite[RIGHT] = spr_armor_heavy_blue_right;

armor.sprite[UP] = spr_armor_heavy_blue_up;

return armor;

