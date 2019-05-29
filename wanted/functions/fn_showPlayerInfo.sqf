#include "..\script_macros.hpp"
/*
 * Author: Johannes "letus" Bindriem
 * Add Description with Basic Information from the Player
 *
 * Arguments:
 * 0: Wanted Data <ARRAY>
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] spawn lts_wanted_fnc_showPlayerInfo
 *
 * Public: Yes
 */
params [
    ["_data", [], [[]]]
];

//Get Player Name
private _DISPLAY = findDisplay WANTED_DIALOG;
private _LBPLAYERS  = _DISPLAY displayCtrl 1003;
private _PLAYERINFO = _DISPLAY displayCtrl 1018;
private _name = _LBPLAYERS lbText (lbCurSel _LBPLAYERS);

//check if Player is Searched & Check how many Money need in total
private _state = "<t color=""#ff0000"">Gesucht</t>";
private _billTotal = 0;
if (count _data isEqualTo 0) then {
    _state = "<t color=""#00ff00"">Nicht Gesucht</t>"
} else {
    { _billTotal = _billTotal + (SEL(_x,8)) } forEach _data;
};

private _text = format["
Name: <br/> %1 <br/>
Status: <br/> %2 <br/>
Gesammt Strafgeld: <br/> %3 <br/>
", _name, _state, _billTotal];
_PLAYERINFO ctrlSetStructuredText (parseText _text);
