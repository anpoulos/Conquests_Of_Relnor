///scr_npc_commands_moved
self.originX = self.x;
self.originY = self.y;
//ignoreLifeformCollisions = false;
//physics_fixture_set_collision_group(fixture, FIXTURE_COLLISION_LIFEFORM);
phy_active = true;
walkThroughNPCs = false;
scr_npc_choose_next_state();
