///Give collision turn to NPC
other.myCollisionTurn = true;

///Talk To
if(keyboard_check(ord("T"))){
    if(!isBusy){
        scr_player_enable_busy();
        ChatWindow = scr_ui_chat_constructor(self, other);
        scr_ui_open_chat(ChatWindow);
        scr_linked_list_add(Menus, ChatWindow.ChatContainer);
    }
}

