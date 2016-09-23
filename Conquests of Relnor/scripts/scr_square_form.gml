///scr_square_form(linkedList_SelectedNPCs, dimension, originX, originY)


var _selected = argument0;
var _dimension = argument1;
var _originX = argument2;
var _originY = argument3;
var _totalSelected = scr_linked_list_size(_selected);

var _previousRow = scr_create_obj_array(_dimension);
var _firstNPC = scr_linked_list_get_next(_selected);

scr_npc_move_to(_firstNPC, _originX, _originY, 
scr_npc_commands_moved, 5, false, false);

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
    
    
    scr_npc_move_to(_currentNPC, 
    _currentNPC.squareX, 
    _currentNPC.squareY, 
    scr_npc_commands_moved,
    5,
    false, false);
}

var _previousRowCounter = 0;
for(var i = _currentCounter; i < _totalSelected; i++){
    var _currentNPC = scr_linked_list_get_next(_selected);    

    var _moveToX = _previousRow.item[_previousRowCounter].squareX;
    var _moveToY = _previousRow.item[_previousRowCounter].squareY+_currentNPC.reach;
    _currentNPC.squareX = _moveToX;
    _currentNPC.squareY = _moveToY;
    
    scr_npc_move_to(_currentNPC,
    _currentNPC.squareX, 
    _currentNPC.squareY,
    scr_npc_commands_moved,
    5,
    false, false);
    
    _previousRow.item[_previousRowCounter] = _currentNPC;
    _previousRowCounter += 1;
    if(_previousRowCounter mod _dimension == 0){
        _previousRowCounter = 0;
    }
}

with(_previousRow){
    instance_destroy();
}
