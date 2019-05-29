#include "..\script_macros.hpp"
/*
 * Author: Johannes "Letus" Bindriem
 * Opens the Wanted Dialog
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
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

//Fill Data to Display
private _DISPLAY    = findDisplay WANTED_DIALOG;
private _LBPLAYERS  = _DISPLAY displayCtrl 1003;
{
    _LBPLAYERS lbAdd (name _x);
    _LBPLAYERS lbSetData [lbSize _LBPLAYERS, getPlayerUID _x]
} forEach allPlayers;

//Disable Buttons that are note used a.t.m.
private _BUTTONSEARCH   = _DISPLAY displayCtrl 1007;
private _BUTTONADDNOTE  = _DISPLAY displayCtrl 1015;
private _BUTTONEDITNOTE = _DISPLAY displayCtrl 1016;
private _BUTTONREMNOTE  = _DISPLAY displayCtrl 1017;

_BUTTONSEARCH   ctrlEnable false;
_BUTTONADDNOTE  ctrlEnable false;
_BUTTONEDITNOTE ctrlEnable false;
_BUTTONREMNOTE  ctrlEnable false;
