///scr_player_commands_square_formation()

if(!self.commandModule.squarePreview.isClear){
    return false;
}

var _dimension = self.commandModule.squarePreview.dimension;

var _avgHeight = self.commandModule.squarePreview.averageHeight;
var _avgWidth = self.commandModule.squarePreview.averageWidth;
var _avgReach = self.commandModule.squarePreview.averageReach;

var _originX = mouse_x-(_avgReach*(_dimension-1))/2; 

var _d = _dimension;

if(self.commandModule.squarePreview.notPerfectSquare){
    _d += 1;
}

var _originY = mouse_y-(_avgReach*(_d))/2;

scr_square_form(self.commandModule.selected, _dimension, _originX, _originY);

self.commandModule.mouseCommand = noone;
scr_player_commands_selected_disable_wander();
scr_destroy_instance(self.commandModule.squarePreview);
self.commandModule.squarePreview = noone;

