///scr_player_commands_square_formation()

var _totalSelected = self.commandModule.totalSelected;
var _selected = self.commandModule.selected;
var _firstNPC = scr_linked_list_get_next(_selected);

var _dimension = round(sqrt(_totalSelected));
if(sqr(_dimension) != _totalSelected){ //not a perfect square
    _dimension += 1;
}

var _dimensionOffset = _dimension*_firstNPC.reach/4;
var _originX = mouse_x-_dimensionOffset; 
var _originY = mouse_y-_dimensionOffset;

var _previousRow = scr_create_obj_array(_dimension);

scr_lifeform_move_to(_firstNPC, _originX, _originY, 
scr_npc_commands_moved, 5, false);

_firstNPC.squareX = _originX;
_firstNPC.squareY = _originY;
_previousRow.item[0] = _firstNPC;

var _currentCounter = 1;
var _currentY = _originY;
for(var i = 1; i < _dimension; i++){
    var _currentNPC = scr_linked_list_get_next(_selected);
    _previousRow.item[i] = _currentNPC;
    _currentCounter += 1;
    
    var _moveToX = _previousRow.item[i-1].squareX+_currentNPC.reach;
    var _moveToY = _originY;
    _currentNPC.squareX = _moveToX;
    _currentNPC.squareY = _moveToY;
    
    scr_lifeform_move_to(_currentNPC, 
    _currentNPC.squareX, 
    _currentNPC.squareY, 
    scr_npc_commands_moved,
    5,
    false);
}

var _previousRowCounter = 0;
for(var i = _currentCounter; i < _totalSelected; i++){
    var _currentNPC = scr_linked_list_get_next(_selected);    

    var _moveToX = _previousRow.item[_previousRowCounter].squareX;
    var _moveToY = _previousRow.item[_previousRowCounter].squareY+_currentNPC.reach;
    _currentNPC.squareX = _moveToX;
    _currentNPC.squareY = _moveToY;
    
    scr_lifeform_move_to(_currentNPC,
    _currentNPC.squareX, 
    _currentNPC.squareY,
    scr_npc_commands_moved,
    5,
    false);
    
    _previousRow.item[_previousRowCounter] = _currentNPC;
    _previousRowCounter += 1;
    if(_previousRowCounter mod _dimension == 0){
        _previousRowCounter = 0;
    }
}

with(_previousRow){
    instance_destroy();
}

scr_player_commands_selected_disable_wander();


