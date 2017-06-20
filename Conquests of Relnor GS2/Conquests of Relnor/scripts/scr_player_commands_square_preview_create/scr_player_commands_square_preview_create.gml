///scr_player_commands_square_preview_create

if(self.isBusy || self.commandModule.squarePreview != noone || self.commandModule.totalSelected <= 0){
    return false;
}

var _mouseX = virtualMouse == noone ? mouse_x : virtualMouse.mouseX;
var _mouseY = virtualMouse == noone ? mouse_y : virtualMouse.mouseY;

var _squarePreview = instance_create(_mouseX, _mouseY, obj_player_command_square_preview);
self.commandModule.squarePreview = _squarePreview;

scr_square_preview_generate_dimension_avgw_avgh_avgr(_squarePreview);

_squarePreview.widthOffset = round((_squarePreview.averageWidth*_squarePreview.dimension)/2);

var _d = _squarePreview.dimension;

if(_squarePreview.notPerfectSquare){
    _d += 1;
}
_squarePreview.heightOffset = round((_squarePreview.averageSize*_d)/2);

self.commandModule.mouseCommand = scr_player_commands_square_formation;

_squarePreview.isVisible = true;
