#include "..\..\script_macros.hpp"
/*
 * Author: Johannes "Letus" Bindriem
 * Function called every Time Wanted List Wanted Listbox changed
 *
 * Arguments:
 * 0: Index of Wanted List <NUMBER>
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [0] call lts_wanted_dialog_fnc_lbWantedChanged
 *
 * Public: Yes
 */

params [
    ["_index", 0, [0]]
];

//Get Dialog and LB Data from Wanted List
private _DISPLAY    = findDisplay WANTED_DIALOG;
private _LBWANTED   = _DISPLAY displayCtrl 1009;
private _data       = _LBWANTED lbData _index;

[_data] call lts_wanted_fnc_showWantedInfo;
