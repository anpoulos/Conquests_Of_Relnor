///scr_square_preview_generate_dimension_avgw_avgh_avgr(obj_square_preview)
var _totalSelected = self.commandModule.totalSelected;

argument0.dimension = round(sqrt(_totalSelected));
if(sqr(argument0.dimension) != _totalSelected){ //not a perfect square
//    argument0.dimension += 1;
    argument0.notPerfectSquare = true;
}

var _avgHeight = 0;
var _avgWidth = 0;
var _avgSize = 0;
for(var i = 0; i < _totalSelected; i++){
    with(scr_linked_list_get_next(self.commandModule.selected)){
        _avgHeight += sprite_get_height(sprite_index);
        _avgWidth += sprite_get_width(sprite_index);
        _avgSize += size;
    }
}

argument0.averageHeight = round(_avgHeight/_totalSelected);
argument0.averageWidth = round(_avgWidth/_totalSelected);
argument0.averageSize = round(_avgSize/_totalSelected);


