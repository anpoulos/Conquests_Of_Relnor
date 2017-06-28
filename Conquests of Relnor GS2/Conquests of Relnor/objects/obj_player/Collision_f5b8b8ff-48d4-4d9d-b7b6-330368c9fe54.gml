/// @description Insert description here
// You can write your code in this editor
if(isCharging){
	scr_special_charge_contact(other);
}

if(!other.isPlayer){
	other.myCollisionTurn = true;
	
	///Talk To
	if(!isBusy && triggers[TRIGGER_USE]){
		if(!isBusy && other.hasDialogue){
		    scr_player_enable_busy();
		    ChatWindow = scr_ui_chat_constructor(self, other, "Chat", noone);
		    scr_ui_open_chat(ChatWindow);
		}
	}
}

