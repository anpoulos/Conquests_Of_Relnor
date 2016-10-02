///scr_npc_movement_move_one_tick(destinationX, destinationY)
    
    //Get length
    self.length = self.currentMoveSpeed;
    
    // Get speeds
    hSpeed = lengthdir_x(self.length, self.direction360);
    vSpeed = lengthdir_y(self.length, self.direction360);
    
    //Control sprite speed
    self.image_speed = sign(self.length) * self.imageSpeed;
    if(self.length == 0) self.image_index = 0;
    
    
    //Move
    scr_obj_move_phy(self, hSpeed, vSpeed);

