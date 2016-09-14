///scr_npc_idle_state
image_speed = 0;
image_index = 0;

self.target = scr_npc_get_target();

if(self.target != noone){
    alarm[1] = -1; //turn off idle alarm
    scr_npc_choose_next_state();
    return true;
}
