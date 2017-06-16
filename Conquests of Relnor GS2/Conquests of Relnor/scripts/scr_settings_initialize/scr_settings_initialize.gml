
settings[SETTINGS_DIFFICULTY] = 1.0;
settings[SETTINGS_LIFEFORM_SHADOW] = false;
settings[SETTINGS_MAP_SHADOW] = false;
settings[SETTINGS_SCROLL_SPEED] = 1.0;
global.scrollSpeed = 1;

settingsType[SETTINGS_DIFFICULTY] = SETTINGS_TYPE_DECIMAL;
settingsType[SETTINGS_LIFEFORM_SHADOW] = SETTINGS_TYPE_BOOLEAN;
settingsType[SETTINGS_MAP_SHADOW] = SETTINGS_TYPE_BOOLEAN;
settingsType[SETTINGS_SCROLL_SPEED] = SETTINGS_TYPE_DECIMAL;

validBindings = scr_linked_list_create();

scr_linked_list_add(validBindings, ord("A"));
scr_linked_list_add(validBindings, ord("B"));
scr_linked_list_add(validBindings, ord("C"));
scr_linked_list_add(validBindings, ord("D"));
scr_linked_list_add(validBindings, ord("E"));
scr_linked_list_add(validBindings, ord("F"));
scr_linked_list_add(validBindings, ord("G"));
scr_linked_list_add(validBindings, ord("H"));
scr_linked_list_add(validBindings, ord("I"));
scr_linked_list_add(validBindings, ord("J"));
scr_linked_list_add(validBindings, ord("K"));
scr_linked_list_add(validBindings, ord("L"));
scr_linked_list_add(validBindings, ord("M"));
scr_linked_list_add(validBindings, ord("N"));
scr_linked_list_add(validBindings, ord("O"));
scr_linked_list_add(validBindings, ord("P"));
scr_linked_list_add(validBindings, ord("Q"));
scr_linked_list_add(validBindings, ord("R"));
scr_linked_list_add(validBindings, ord("S"));
scr_linked_list_add(validBindings, ord("T"));
scr_linked_list_add(validBindings, ord("U"));
scr_linked_list_add(validBindings, ord("V"));
scr_linked_list_add(validBindings, ord("W"));
scr_linked_list_add(validBindings, ord("X"));
scr_linked_list_add(validBindings, ord("Y"));
scr_linked_list_add(validBindings, ord("Z"));

scr_linked_list_add(validBindings, vk_alt);
scr_linked_list_add(validBindings, vk_control);
scr_linked_list_add(validBindings, vk_lalt);
scr_linked_list_add(validBindings, vk_lcontrol);
scr_linked_list_add(validBindings, vk_lshift);
scr_linked_list_add(validBindings, vk_ralt);
scr_linked_list_add(validBindings, vk_rcontrol);
scr_linked_list_add(validBindings, vk_rshift);
scr_linked_list_add(validBindings, vk_down);
scr_linked_list_add(validBindings, vk_enter);
scr_linked_list_add(validBindings, vk_escape);
scr_linked_list_add(validBindings, vk_shift);
scr_linked_list_add(validBindings, vk_space);
scr_linked_list_add(validBindings, vk_tab);
scr_linked_list_add(validBindings, vk_up);
scr_linked_list_add(validBindings, vk_left);
scr_linked_list_add(validBindings, vk_right);


validGamePadButtons = scr_linked_list_create();

scr_linked_list_add(validGamePadButtons, gp_face1);
scr_linked_list_add(validGamePadButtons, gp_face2);
scr_linked_list_add(validGamePadButtons, gp_face3);
scr_linked_list_add(validGamePadButtons, gp_face4);
scr_linked_list_add(validGamePadButtons, gp_shoulderl);
scr_linked_list_add(validGamePadButtons, gp_shoulderlb);
scr_linked_list_add(validGamePadButtons, gp_shoulderr);
scr_linked_list_add(validGamePadButtons, gp_shoulderrb);
scr_linked_list_add(validGamePadButtons, gp_select);
scr_linked_list_add(validGamePadButtons, gp_start);
scr_linked_list_add(validGamePadButtons, gp_stickl);
scr_linked_list_add(validGamePadButtons, gp_stickr);
scr_linked_list_add(validGamePadButtons, gp_padu);
scr_linked_list_add(validGamePadButtons, gp_padd);
scr_linked_list_add(validGamePadButtons, gp_padl);
scr_linked_list_add(validGamePadButtons, gp_padr);
//scr_linked_list_add(validGamePadButtons, gp_axislh);
//scr_linked_list_add(validGamePadButtons, gp_axislv);
//scr_linked_list_add(validGamePadButtons, gp_axisrh);
//scr_linked_list_add(validGamePadButtons, gp_axisrv);

