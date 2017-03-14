///scr_lifeform_dash_state()

self.length = self.moveSpeed*self.dashSpeed;

// Get speeds
hSpeed = lengthdir_x(self.length, self.direction360);
vSpeed = lengthdir_y(self.length, self.direction360);

//Move
scr_obj_move_phy(self, hSpeed, vSpeed);

//Create dash effect
var dash = instance_create(self.x, self.y, obj_Lifeform_Dash_Effect);
dash.sprite_index = self.sprite_index;
dash.image_index = self.image_index;
