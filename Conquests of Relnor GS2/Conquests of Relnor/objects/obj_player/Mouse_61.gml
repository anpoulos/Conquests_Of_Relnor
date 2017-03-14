///Zoom out

//var _ratio = view_wport[0] / view_hport[0]
if(zoom < 100){
    __view_set( e__VW.WView, 0, __view_get( e__VW.WView, 0 ) + (16) );
    __view_set( e__VW.HView, 0, __view_get( e__VW.HView, 0 ) + (10) );
    zoom += 1;
}


