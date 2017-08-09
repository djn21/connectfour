/*************************************************************************************************
* MODULE:    CONNECTFOUR
* CONTAINS:  Functions for abstracting connectfour game
* COPYRIGHT: Faculty of Electrical Engineering - www.etf.unibl.org
* VERSION:   1.0, 09-AUG-17
*************************************************************************************************/

#ifndef _CONNECTFOUR_H_
#define _CONNECTFOUR_H_

/*************************************************************************************************
* DOES:     Initialize connectfour
* GLOBALS:  Modify mCurrentPlayerColor
* RETURNS:  This function does not return value
*************************************************************************************************/
void ConnectFour_Init();

/*************************************************************************************************
* DOES:     Swiching between red and yellow player
* GLOBALS:  Modify mCurrentPlayerColor
* RETURNS:  This function does not return value
*************************************************************************************************/
void ConnectFour_SwitchPlayer();

/*************************************************************************************************
* DOES:     Insert disc in the appropriate column
* GLOBALS:  Reads mCurrentPlayerColor. Modify mCurrentPlayerColor, mDiscXPosition, mDiscYPosition
* LIMITS:   Parameter column must be between 1 and 7
* RETURNS:  Returns 1 if disc inserted successfully, or 0 if not
*************************************************************************************************/
unsigned char ConnectFour_InsertDisc(unsigned char column);

/*************************************************************************************************
* DOES:     Check for winner
* GLOBALS:  Reads mGameMatrix, mCurrentPlayerColor. Modify mWinnersDiscsPosition
* RETURNS:  Returns 1 if somone wins the game, or 0 if not
*************************************************************************************************/
unsigned char ConnectFour_CheckWinner();

/*************************************************************************************************
* DOES:     Set winners discs blinking
* GLOBALS:  Modify mWinnersDiscsPosition
* LIMITS:   Parameter onOff must be 1 for ON or 0 for OFF
* RETURNS:  This function does not return value
*************************************************************************************************/
void ConnectForur_TurnWinnersDiscs(unsigned char onOff);

/*************************************************************************************************
* DOES:     Start new game
* GLOBALS:  Modify mGameMatrix, mWinnersDiscsPosition
* RETURNS:  This function does not return value
*************************************************************************************************/
void ConnectFour_NewGame();

#endif