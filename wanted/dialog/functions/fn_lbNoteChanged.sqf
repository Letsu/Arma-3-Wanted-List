#include "..\..\script_macros.hpp"
/*
 * Author: Johannes "Letus" Bindriem
 * Function called every Time Wanted List Note Listbox changed
 *
 * Arguments:
 * 0: Index of Note List <NUMBER>
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [0] call lts_wanted_dialog_fnc_lbNoteChnaged
 *
 * Public: Yes
 */
 params [
     ["_index", 0, [0]]
 ];

 //Get Dialog and LB Data from Player List
 private _DISPLAY    = findDisplay WANTED_DIALOG;
 private _LBNOTES    = _DISPLAY displayCtrl 1013;
 private _data       = _LBNOTES lbData _index;

LOG(str(_data));
