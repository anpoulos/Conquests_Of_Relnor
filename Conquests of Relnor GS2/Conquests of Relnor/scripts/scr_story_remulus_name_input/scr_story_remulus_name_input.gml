///used as player

UiInput = instance_create(0,0,obj_ui_keyboard_input);

UiInput.saveScript = scr_story_remulus_name_input_finish;
UiInput.executeSaveScriptAs = self;