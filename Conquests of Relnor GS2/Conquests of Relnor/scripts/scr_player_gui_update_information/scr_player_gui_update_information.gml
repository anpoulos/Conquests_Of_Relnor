///scr_player_gui_update_information

var _s1 = "Health: " + string(self.statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_HEALTH]) + "/";
self.PlayerInformationHealthText.text = string_insert(string(self.statsMax[STATS_PHYSICAL, STATS_PHYSICAL_HEALTH]), _s1, string_length(_s1)+1);

var _ratioOfThree = self.statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_HEALTH]/self.statsMax[STATS_PHYSICAL, STATS_PHYSICAL_HEALTH];
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

var _s2 = "Energy: " + string(self.statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_ENERGY]) + "/";
self.PlayerInformationEnergyText.text = string_insert(string(self.statsMax[STATS_PHYSICAL, STATS_PHYSICAL_ENERGY]), _s2, string_length(_s2)+1);
PlayerInformationEnergyBar.image_index = scr_lifeform_get_energy_bar_state(self);

if(equipment[EQUIPMENT_TYPE_OFFHAND] != noone){
	var _item = equipment[EQUIPMENT_TYPE_OFFHAND];
	if(_item.object_index == obj_offhand_tome_parent && _item.selectedSpell != noone){
		var _text = _item.selectedSpell.name;
		SecondaryAttackText.text = _text;
		SecondaryAttackIcon.sprite = _item.selectedSpell.icon;
	}
	else{
		SecondaryAttackText.text = _item.itemStats[ITEM_STATS_NAME];
		SecondaryAttackIcon.sprite = _item.icon;
	}
}
else{
	SecondaryAttackText.text = "";
	SecondaryAttackIcon.sprite = noone;
}

if(currentSpecial != noone){
	PrimaryAttackText.text = currentSpecial.name;
	PrimaryAttackIcon.sprite = currentSpecial.icon;
}
else{
	PrimaryAttackText.text = "";
	PrimaryAttackIcon.sprite = noone;
}

if(scr_ui_draw_is_visible(CommandInformationMenuContainer)){
	scr_player_gui_update_command_selected(true);
}