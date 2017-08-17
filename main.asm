
_Init:
;main.c,11 :: 		void Init(){
;main.c,12 :: 		Timer_Init();
	LCALL _Timer_Init+0
;main.c,13 :: 		Keypad_Init();
	LCALL _Keypad_Init+0
;main.c,14 :: 		Display_Init();
	LCALL _Display_Init+0
;main.c,15 :: 		ConnectFour_Init();
	LCALL _ConnectFour_Init+0
;main.c,16 :: 		}
	RET
; end of _Init

_main:
	MOV SP+0, #128
;main.c,18 :: 		void main() {
;main.c,29 :: 		Init();
	LCALL _Init+0
;main.c,32 :: 		do{
L_main0:
;main.c,33 :: 		do{
L_main3:
;main.c,35 :: 		do{
L_main6:
;main.c,36 :: 		keyIndex = Keypad_Key_Click();
	LCALL _Keypad_Key_Click+0
;main.c,37 :: 		key = keys[keyIndex];
	MOV A, R0
	ADD A, #_keys+0
	MOV R0, A
	CLR A
	ADDC A, hi(#_keys+0)
	MOV R1, A
	MOV 130, 0
	MOV 131, 1
	CLR A
	MOVC A, @A+DPTR
	MOV R2, A
	MOV main_key_L0+0, 2
;main.c,38 :: 		}while(key < '1' || key > '7');
	CLR C
	MOV A, R2
	SUBB A, #49
	JC L_main6
	SETB C
	MOV A, main_key_L0+0
	SUBB A, #55
	JNC L_main6
L__main13:
;main.c,40 :: 		discInserted = ConnectFour_InsertDisc(key - 48);
	CLR C
	MOV A, main_key_L0+0
	SUBB A, #48
	MOV FARG_ConnectFour_InsertDisc_column+0, A
	LCALL _ConnectFour_InsertDisc+0
;main.c,41 :: 		} while(discInserted == 0);
	MOV A, R0
	JZ L_main3
;main.c,43 :: 		hasWinner = ConnectFour_CheckWinner();
	LCALL _ConnectFour_CheckWinner+0
;main.c,70 :: 		if(hasWinner == 0){
	MOV A, R0
<<<<<<< HEAD
	JNZ L_main11
;main.c,72 :: 		ConnectFour_SwitchPlayer();
	LCALL _ConnectFour_SwitchPlayer+0
;main.c,73 :: 		} else {
	SJMP L_main12
L_main11:
;main.c,74 :: 		break;
	SJMP L_main1
;main.c,75 :: 		}
L_main12:
;main.c,76 :: 		} while(1);
	SJMP L_main0
L_main1:
;main.c,78 :: 		}
=======
	JNZ #3
	LJMP L_main11
;main.c,46 :: 		startTime = Timer_Miliseconds();
	LCALL _Timer_Miliseconds+0
	MOV main_startTime_L0+0, 0
	MOV main_startTime_L0+1, 1
	MOV main_startTime_L0+2, 2
	MOV main_startTime_L0+3, 3
;main.c,47 :: 		do{
L_main12:
;main.c,48 :: 		stopTime = Timer_Miliseconds();
	LCALL _Timer_Miliseconds+0
	MOV main_stopTime_L0+0, 0
	MOV main_stopTime_L0+1, 1
	MOV main_stopTime_L0+2, 2
	MOV main_stopTime_L0+3, 3
;main.c,50 :: 		if(stopTime - startTime < 500){
	CLR C
	MOV A, R0
	SUBB A, main_startTime_L0+0
	MOV R4, A
	MOV A, R1
	SUBB A, main_startTime_L0+1
	MOV R5, A
	MOV A, R2
	SUBB A, main_startTime_L0+2
	MOV R6, A
	MOV A, R3
	SUBB A, main_startTime_L0+3
	MOV 7, A
	CLR C
	MOV A, R4
	SUBB A, #244
	MOV A, R5
	SUBB A, #1
	MOV A, R6
	SUBB A, #0
	MOV A, 7
	SUBB A, #0
	JNC L_main15
;main.c,51 :: 		ConnectFour_TurnWinnersDiscs(0);
	MOV FARG_ConnectFour_TurnWinnersDiscs_onOff+0, #0
	LCALL _ConnectFour_TurnWinnersDiscs+0
;main.c,52 :: 		}
	SJMP L_main16
L_main15:
;main.c,54 :: 		else if(stopTime - startTime < 1000){
	CLR C
	MOV A, main_stopTime_L0+0
	SUBB A, main_startTime_L0+0
	MOV R1, A
	MOV A, main_stopTime_L0+1
	SUBB A, main_startTime_L0+1
	MOV R2, A
	MOV A, main_stopTime_L0+2
	SUBB A, main_startTime_L0+2
	MOV R3, A
	MOV A, main_stopTime_L0+3
	SUBB A, main_startTime_L0+3
	MOV R4, A
	CLR C
	MOV A, R1
	SUBB A, #232
	MOV A, R2
	SUBB A, #3
	MOV A, R3
	SUBB A, #0
	MOV A, R4
	SUBB A, #0
	JNC L_main17
;main.c,55 :: 		ConnectFour_TurnWinnersDiscs(1);
	MOV FARG_ConnectFour_TurnWinnersDiscs_onOff+0, #1
	LCALL _ConnectFour_TurnWinnersDiscs+0
;main.c,56 :: 		}
	SJMP L_main18
L_main17:
;main.c,59 :: 		startTime = Timer_Miliseconds();
	LCALL _Timer_Miliseconds+0
	MOV main_startTime_L0+0, 0
	MOV main_startTime_L0+1, 1
	MOV main_startTime_L0+2, 2
	MOV main_startTime_L0+3, 3
;main.c,60 :: 		}
L_main18:
L_main16:
;main.c,62 :: 		keyIndex = Keypad_Key_Click();
	LCALL _Keypad_Key_Click+0
;main.c,63 :: 		key = keys[keyIndex];
	MOV A, R0
	ADD A, #_keys+0
	MOV R0, A
	CLR A
	ADDC A, hi(#_keys+0)
	MOV R1, A
	MOV 130, 0
	MOV 131, 1
	CLR A
	MOVC A, @A+DPTR
	MOV R2, A
	MOV main_key_L0+0, 2
;main.c,64 :: 		}while(key != 'D');
	MOV A, R2
	XRL A, #68
	JZ #3
	LJMP L_main12
;main.c,66 :: 		ConnectFour_NewGame();
	LCALL _ConnectFour_NewGame+0
;main.c,67 :: 		}
	SJMP L_main19
L_main11:
;main.c,71 :: 		ConnectFour_SwitchPlayer();
	LCALL _ConnectFour_SwitchPlayer+0
;main.c,72 :: 		}
L_main19:
;main.c,73 :: 		} while(1);
	LJMP L_main0
;main.c,75 :: 		}
>>>>>>> a7b2ab055a0904672e9901c936656befca9b08ee
	SJMP #254
; end of _main
