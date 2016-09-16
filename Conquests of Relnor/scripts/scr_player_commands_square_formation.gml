///scr_player_commands_square_formation()

var _totalSelected = self.commandModule.totalSelected;
var _selected = self.commandModule.selected;

var _selectedNPCs = scr_create_obj_array(_totalSelected);

var _currentCounter = 0;
for(var i = 0; i < MAX_NPCS; i++){
    if(_selected[i]){
        _selectedNPCs.item[_currentCounter] = global.npcs[i];
        _currentCounter += 1;
    }
}

var _dimension = round(sqrt(_totalSelected));
if(sqr(_dimension) != _totalSelected){ //not a perfect square
    _dimension += 1;
}

var _dimensionOffset = _dimension*_selectedNPCs.item[0].reach/4;
var _originX = mouse_x-_dimensionOffset; 
var _originY = mouse_y-_dimensionOffset;

var _previousRow = scr_create_obj_array(_dimension);

scr_lifeform_move_to(_selectedNPCs.item[0], _originX, _originY, 
scr_npc_commands_moved, 5, false);

_selectedNPCs.item[0].squareX = _originX;
_selectedNPCs.item[0].squareY = _originY;
_previousRow.item[0] = _selectedNPCs.item[0];

var _currentCounter = 1;
var _currentY = _originY;
for(var i = 1; i < _dimension; i++){
    _previousRow.item[i] = _selectedNPCs.item[i];
    _currentCounter += 1;
    
    var _moveToX = _selectedNPCs.item[i-1].squareX+_selectedNPCs.item[i].reach;
    var _moveToY = _originY;
    _selectedNPCs.item[i].squareX = _moveToX;
    _selectedNPCs.item[i].squareY = _moveToY;
    
    scr_lifeform_move_to(_selectedNPCs.item[i], 
    _selectedNPCs.item[i].squareX, 
    _selectedNPCs.item[i].squareY, 
    scr_npc_commands_moved,
    5,
    false);
    
    _previousRow.item[i] = _selectedNPCs.item[i];
}

var _previousRowCounter = 0;
for(var i = _currentCounter; i < _totalSelected; i++){

    var _moveToX = _previousRow.item[_previousRowCounter].squareX;
    var _moveToY = _previousRow.item[_previousRowCounter].squareY+_selectedNPCs.item[i].reach;
    _selectedNPCs.item[i].squareX = _moveToX;
    _selectedNPCs.item[i].squareY = _moveToY;
    
    scr_lifeform_move_to(_selectedNPCs.item[i],
    _selectedNPCs.item[i].squareX, 
    _selectedNPCs.item[i].squareY,
    scr_npc_commands_moved,
    5,
    false);
    
    _previousRow.item[_previousRowCounter] = _selectedNPCs.item[i];
    _previousRowCounter += 1;
    if(_previousRowCounter mod _dimension == 0){
        _previousRowCounter = 0;
    }
}

scr_player_commands_selected_disable_wander();


