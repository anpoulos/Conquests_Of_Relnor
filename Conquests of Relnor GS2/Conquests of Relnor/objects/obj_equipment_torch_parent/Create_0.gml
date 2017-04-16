///Create
event_inherited();

self.icon = spr_equipment_torch_icon;

self.sprite[DOWN] = spr_equipment_torch_down;

self.sprite[LEFT] = spr_equipment_torch_left;

self.sprite[RIGHT] = spr_equipment_torch_right;

self.sprite[UP] = spr_equipment_torch_up;

flame = noone;

useScript = scr_equipment_torch_use;
unequipScript = scr_equipment_torch_unequip;
dropScript = scr_equipment_torch_drop;

flameObject = obj_map_light_torch_flame;

flameColor[0] = 255;
flameColor[1] = 100;
flameColor[2] = 0;