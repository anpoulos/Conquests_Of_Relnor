///zoom in

if(zoom > 0){
    __view_set( e__VW.WView, 0, __view_get( e__VW.WView, 0 ) - (16) );
    __view_set( e__VW.HView, 0, __view_get( e__VW.HView, 0 ) - (10) );
    zoom -= 1;
}

