///Draw Equipment and sprite

if(isVisible){
	//draw shadow
	
	if(hasShadow && global.mapControl.settings[SETTINGS_LIFEFORM_SHADOW] == 1.0){
		//draw_set_color(c_black);
		scr_map_shadow_draw_lifeform(global.shadowOpacity, 0.5);
	}

	//draw items behind first

	shader_set(shader_0);
	scr_lifeform_draw(x,y,1,1,0,c_white,1);
	shader_reset();

	///Draw Healthbar

	if(healthBarIsVisible){
	    var _h = 40;
	    draw_sprite(spr_lifeform_health_bar, healthBarCurrentBar, x, y-_h);
	    draw_sprite_ext(spr_lifeform_energy_bar, energyBarCurrentBar, x, y-_h+4,
	    1,0.5,0,c_white, 1.0);
	}
}

