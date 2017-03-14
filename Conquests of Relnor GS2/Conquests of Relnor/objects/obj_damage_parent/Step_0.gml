///Travel towards destination



var _closeness = distance_to_point(destinationX, destinationY);

if(_closeness < accuracy){
    if(self.arrivalScript != noone){
        script_execute(self.arrivalScript);
    }
}
else{
    var _oX = 0;
    var _oY = 0;
    var _currentX = round(x);
    var _currentY = round(y);

    if(destinationX > _currentX){
        _oX = destinationSpeed;
    }
    else if(destinationX < _currentX){
        _oX = -destinationSpeed;
    }
    
    if(destinationY > _currentY){
        _oY = destinationSpeed;
    }
    else if (destinationY < _currentY){
        _oY = -destinationSpeed;
    }
    
    phy_position_x += _oX;
    phy_position_y += _oY;
}

