///scr_lifeform_update_health_bar(lifeform)

//healthbar has 9 states, 0-9 no fill to full fill

var hpRatio = argument0.hitpoints / argument0.maxHitpoints;
var barState = round(hpRatio*9);

argument0.healthBar.currentBar = barState;
argument0.healthBar.isVisible = true;

argument0.alarm[4] = room_speed*5;


