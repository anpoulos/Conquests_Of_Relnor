///scr_npc_set_directions_by_offset
    
if(self.moveOffsetX == 0){
    self.directions[LEFT] = 0;
    self.directions[RIGHT] = 0;
}
else if(self.moveOffsetX > 0){
    self.directions[RIGHT] = 1;
    self.directions[LEFT] = 0;
}
else if(self.moveOffsetX < 0){
    self.directions[LEFT] = 1;
    self.directions[RIGHT] = 0;
}

if(self.moveOffsetY == 0){
    self.directions[UP] = 0;
    self.directions[DOWN] = 0;
}
else if(self.moveOffsetY > 0){
    self.directions[DOWN] = 1;
    self.directions[UP] = 0;
}
else if(self.moveOffsetY < 0){
    self.directions[UP] = 1;
    self.directions[DOWN] = 0;
}

