///Create Equipment
event_inherited();

sprite[4] = noone;
itemStats[ITEM_STATS_TYPE] = ITEM_TYPE_EQUIPMENT;
equipmentStats[EQUIPMENT_STATS_MAX] = noone;
equipmentSlots[EQUIPMENT_TYPE_MAX] = false;

sex = MALE;

useScript = scr_item_equipment_parent_use;
unequipScript = scr_item_equipment_parent_unequip;

isEquipped = false;
isVisibleWhenEquipped = true;