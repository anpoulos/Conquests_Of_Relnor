if(isVisible){
    draw_set_alpha(0.2);
    
    if(isClear){ //draw green
        draw_rectangle_colour(leftSide, topSide, rightSide, bottomSide,
            c_green, c_green, c_green, c_green, false);
    }
    else{ //draw red
        draw_rectangle_colour(leftSide, topSide, rightSide, bottomSide,
            c_red, c_red, c_red, c_red, false);    
    }
    draw_set_alpha(1);
}

