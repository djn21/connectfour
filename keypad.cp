#line 1 "D:/Workspaces/MikroC/connectfour/keypad.c"
#line 1 "d:/workspaces/mikroc/connectfour/keypad.h"
#line 7 "d:/workspaces/mikroc/connectfour/keypad.h"
void init_keypad();
#line 13 "d:/workspaces/mikroc/connectfour/keypad.h"
char key_click_keypad();
#line 3 "D:/Workspaces/MikroC/connectfour/keypad.c"
char keypadPort at P0;

char keys[17] = {'\0', '1', '2', '3', 'A', '4', '5', '6', 'B',
 '7', '8', '9', 'C' ,'*', '0', '#', 'D'};
#line 11 "D:/Workspaces/MikroC/connectfour/keypad.c"
void init_keypad(){
 Keypad_Init();
}
#line 19 "D:/Workspaces/MikroC/connectfour/keypad.c"
char key_click_keypad(){
 return keys[Keypad_Key_Click()];
}