#include "..\..\script_macros.hpp"
/*
 * Author: Johannes "Letus" Bindriem
 * [Description]
 *
 * Arguments:
 * 0: Argument Name <TYPE>
 *
 * Return Value:
 * Return Name <TYPE>
 *
 * Example:
 * ["example"] call ace_[module]_fnc_[functionName]
 *
 * Public: [Yes/No]
 */

//Get Displays
private _DISPLAY        = findDisplay WANTED_ADD_DIALOG;
private _TITLE          = _DISPLAY displayCtrl 1002;
private _DESCRIPTION    = _DISPLAY displayCtrl 1004;
private _FINE           = _DISPLAY displayCtrl 1006;

//Get TextBox Content
