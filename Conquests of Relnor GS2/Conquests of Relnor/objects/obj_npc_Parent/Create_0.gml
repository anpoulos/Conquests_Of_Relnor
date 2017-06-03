///NPC

event_inherited();

deathTimer = -1;

wasLoadedFromSave = false;

allegianceParent = noone;

collisionCounter = -1;
ignoreTargeting = false;

healthThreshold = irandom_range(25,75)/100;

respawns = false;
deadSprite = noone;
autoDeadSprite = noone;
hasDialogue = false;
nameIdentifier = "";
busyState = scr_npc_states_busy;
myCollisionTurn = false;
isDefensive = true;
everyOther = false;
squareX = 0;
squareY = 0;
commandedMoveTo = false;
isAggressive = false;
spawnX = x;
spawnY = y;
originX = x;
originY = y;
wanderDistance = 50;
isWandering = true;
lockedTarget = noone;
waitForX = noone;
waitForY = noone;

//override
self.reach = 25;
self.sight = 50;
engageDistance = sight;

self.directions[RIGHT] = 0;
self.directions[LEFT] = 0;
self.directions[DOWN] = 0;
self.directions[UP] = 0;

self.attackState = scr_npc_states_attack_state;
self.moveState = scr_npc_states_move_state;
self.state = scr_npc_choose_next_state;
self.idleState = scr_npc_idle_state;