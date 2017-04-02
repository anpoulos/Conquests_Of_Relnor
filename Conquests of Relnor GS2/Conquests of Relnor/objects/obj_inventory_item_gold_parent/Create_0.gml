/// @description Insert description here
// You can write your code in this editor

event_inherited();
itemStats[ITEM_STATS_DROP_PERCENTAGE] = 1.0;
itemStats[ITEM_STATS_NAME] = "Gold";

dropScript = scr_item_drop;
icon = spr_gold;

groundSprite = spr_gold;

pickupScript = scr_gold_pickup;

isVisible = true;