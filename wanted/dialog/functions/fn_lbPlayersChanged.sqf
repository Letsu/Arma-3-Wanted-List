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

private _DISPLAY    = findDisplay WANTED_DIALOG;
private _LBPLAYERS  = _DISPLAY displayCtrl 1003;
