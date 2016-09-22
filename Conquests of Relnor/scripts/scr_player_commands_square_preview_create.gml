///scr_player_commands_square_preview_create

if(self.commandModule.squarePreview != noone || self.commandModule.totalSelected <= 0){
    return false;
}

var _squarePreview = instance_create(mouse_x, mouse_y, obj_player_command_square_preview);
self.commandModule.squarePreview = _squarePreview;

scr_square_preview_generate_dimension_avgw_avgh_avgr(_squarePreview);

_squarePreview.widthOffset = round((_squarePreview.averageWidth*_squarePreview.dimension)/2);
_squarePreview.heightOffset = round((_squarePreview.averageReach*(_squarePreview.dimension+1))/2);

self.commandModule.mouseCommand = scr_player_commands_square_formation;

_squarePreview.isVisible = true;
