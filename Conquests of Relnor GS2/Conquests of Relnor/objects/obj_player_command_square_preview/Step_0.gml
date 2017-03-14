///Check for collisions, update offsets

    leftSide = mouse_x-widthOffset;
    topSide = mouse_y-heightOffset;
    rightSide = mouse_x+widthOffset;
    bottomSide = mouse_y+heightOffset;
    
    isClear = !collision_rectangle(leftSide, topSide, rightSide, bottomSide, obj_unwalkable, false, true);


