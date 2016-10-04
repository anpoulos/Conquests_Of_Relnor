///scr_lifeform_constructor

path = path_add();

pathIndex = 0;
updatePath = false;
previousCellX = 0;
previousCellY = 0;

attacks[ATTACKS_MAX] = noone;
currentAttack = noone;

phy_fixed_rotation = true;
ignoreLifeformCollisions = false;

equipment = scr_create_obj_array(2);

inventory = scr_create_obj_array(16);

selected = false;
image_speed = 0;
currentDepth = depth;
possibleEnemies = scr_linked_list_create();

attackImageSpeed = 0.5;
showHealthBar = false;

xAxis = 0;
yAxis = 0;
allegiance = noone;
allegianceRank[ALLEGIANCE_MAX] = 0;
target = noone;
moveOffsetX = 0;
moveOffsetY = 0;
reach = 15;

isPlayer = false;
maxHitpoints = 10;
hitpoints = 10;
name = "Lifeform Parent";
energy = 10.0;
state = scr_lifeform_move_state;
sight = 50;

moveToX = noone;
moveToY = noone;
moveToEndScript = noone;
moveToAccuracy = 10;
lastX = noone;
lastY = noone;

deathState = scr_lifeform_death_state;
moveState = scr_lifeform_move_state;
attackState = noone;
idleState = scr_lifeform_idle_state;

moveInputs = scr_lifeform_get_action_inputs;

sprites[4] = noone;
triggers[TRIGGERS_MAX] = noone;
directions[4] = noone;
attackSprite[4] = noone;
deadSprite = noone;

healthBar = instance_create(x,y,obj_lifeform_health_bar);
healthBar.player = self;
healthBar.isVisible = false;

//movement
direction360 = 0;
face4Way = DOWN;
face8Way = FACE_DOWN;
length = 0;
imageSpeed = 0.2;
walkSpeed = 2;
runSpeed = 4;
dashSpeed = 6;
moveSpeed = walkSpeed;
currentMoveSpeed = moveSpeed;

attacked = false;