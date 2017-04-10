///@description Creates a key object
///@param x 0
///@param y 1
///@param obj_key 2
///@param name 3
///@param weight 4
///@param value 5
///@param keyId 6
///@param roomId 7
///@param drop_percentage 8
///@param owner 9
///@param icon 10

var _key = scr_item_create(argument0, argument1, argument2, argument3, argument4,
		argument5,argument8,argument10,argument10,argument9, false);

_key.keyId = argument6;
_key.roomId = scr_room_get_id(argument7);

return _key;

