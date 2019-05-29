#include "..\script_macros.hpp"
/*
 * Author: Johannes "Letus" Bindriem
 * Opens the Wanted Dialog
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * is Sucessfull
 *
 * Example:
 * [] call lts_wanted_fnc_callWanted
 *
 * Public: Yes
 */

//Open Dialog
waitUntil {!isNull (findDisplay ARMA_GAMESCREEN)};
createDialog "wanted";
waitUntil {!isNull (findDisplay WANTED_DIALOG)};

//Fill Data
_DISPLAY = findDisplay WANTED_DIALOG;
_LBPLAYERS = _DISPLAY displayCtrl 1003;

{
    _LBPLAYERS lbAdd (name _x);
    _LBPLAYERS lbSetData [lbSize _LBPLAYERS, getPlayerUID _x]
} forEach allPlayers;
