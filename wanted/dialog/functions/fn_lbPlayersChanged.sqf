#include "..\..\script_macros.hpp"
/*
 * Author: Johannes "Letus" Bindriem
 * Function called every Time Wanted List player Listbox changed
 *
 * Arguments:
 * 0: Index of Wanted List <NUMBER>
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] call lts_wanted_dialog_fnc_lbPlayersChanged
 *
 * Public: Yes
 */

 params [
    ["_index", 0, [0]]
];

//Get Dialog and LB Data from Player List
private _DISPLAY    = findDisplay WANTED_DIALOG;
private _LBPLAYERS  = _DISPLAY displayCtrl 1003;
private _data = _LBPLAYERS lbData _index;

[_data, 1] call lts_wanted_fnc_listPlayersEntrys; //Only Testing
/* [_data] call lts_wanted_fnc_listPlayersEntrys; */
