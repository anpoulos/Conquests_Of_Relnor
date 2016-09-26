///scr_player_gui_update_information

var _s1 = string_insert(string(self.hitpoints), "Health: /", 9);
self.PlayerInformationHealthText.text = string_insert(string(self.maxHitpoints), _s1, string_length(_s1)+1);

var _ratioOfThree = self.hitpoints/self.maxHitpoints;
var _range = round(_ratioOfThree * 2);
var _color = c_green;

switch(_range){
    case 0:
    _color = c_red;
    break;
    case 1:
    _color = c_yellow;
    break;
}

self.PlayerInformationHealthText.color = _color;

