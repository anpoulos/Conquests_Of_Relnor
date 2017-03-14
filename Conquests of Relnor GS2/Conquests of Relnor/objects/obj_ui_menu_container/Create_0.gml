///Menu Container Create
event_inherited();
name = "UI Menu Container";

stepScript = noone;
//buttonPressed = false; //i dont think i need this for anything?
objects = scr_linked_list_create();

topLeftColor = noone;
topRightColor = noone;
bottomRightColor = noone;
bottomLeftColor = noone;
isOutlined = noone;
menuAlpha = noone;

stretchedX = noone;
stretchedY = noone;
//overrides
self.drawScript = scr_ui_menu_draw;

