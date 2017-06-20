///Check for collisions, update offsets

	
var _mouseX = global.player.virtualMouse == noone ? mouse_x : global.player.virtualMouse.mouseX;
var _mouseY = global.player.virtualMouse == noone ? mouse_y : global.player.virtualMouse.mouseY;

leftSide = _mouseX - widthOffset;
topSide = _mouseY - heightOffset;
rightSide = _mouseX + widthOffset;
bottomSide = _mouseY + heightOffset;
    
isClear = !collision_rectangle(leftSide, topSide, rightSide, bottomSide, obj_unwalkable, false, true);


