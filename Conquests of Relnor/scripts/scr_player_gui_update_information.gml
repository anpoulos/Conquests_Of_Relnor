///scr_player_gui_update_information

//var _s1 = string_insert(string(self.hitpoints), "Health: /", 9);
var _s1 = "Health: " + string(self.hitpoints) + "/";
self.PlayerInformationHealthText.text = string_insert(string(self.maxHitpoints), _s1, string_length(_s1)+1);

var _ratioOfThree = self.hitpoints/self.maxHitpoints;
var _range = round(_ratioOfThree * 2);
var _color = c_white;

switch(_range){
    case 0:
    _color = c_red;
    break;
    case 1:
    _color = c_yellow;
    break;
}

self.PlayerInformationHealthText.color = _color;
PlayerInformationHealthBar.image_index = healthBarCurrentBar;

var _s2 = "Energy: " + string(self.energy) + "/";
self.PlayerInformationEnergyText.text = string_insert(string(self.maxEnergy), _s2, string_length(_s2)+1);
PlayerInformationEnergyBar.image_index = scr_lifeform_get_energy_bar_state(self);


