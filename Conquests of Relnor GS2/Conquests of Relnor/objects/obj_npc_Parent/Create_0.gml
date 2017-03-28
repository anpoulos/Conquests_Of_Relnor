///NPC

event_inherited();

nameIdentifier = "";
busyState = scr_npc_states_busy;
myCollisionTurn = false;
isDefensive = true;
everyOther = false;
walkThroughNPCs = false;
squareX = 0;
squareY = 0;
commandedMoveTo = false;
isAggressive = false;
originX = x;
originY = y;
wanderRadius = 1000;
wanderDistance = 50;
oldWanderRadius = wanderRadius;
oldWanderDistance = wanderDistance;
lockedTarget = noone;

//override
self.reach = 25;
self.sight = 50;

self.directions[RIGHT] = 0;
self.directions[LEFT] = 0;
self.directions[DOWN] = 0;
self.directions[UP] = 0;

self.attackState = scr_npc_states_attack_state;
self.moveInputs = scr_npc_set_directions_by_offset;
self.moveState = scr_npc_states_move_state;
self.state = scr_npc_choose_next_state;