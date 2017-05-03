///@param lifeform

var _lifeform = argument0;

var _name = _lifeform.name;

if(!_lifeform.isPlayer && string_length(_lifeform.nameIdentifier) > 0){
	_name += " " + _lifeform.nameIdentifier;
}

return _name;

