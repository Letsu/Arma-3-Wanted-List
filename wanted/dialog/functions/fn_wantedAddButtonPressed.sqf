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
 waitUntil {!isNull (findDisplay ARMA_GAMESCREEN)};
 createDialog "wantedAdd";
 waitUntil {!isNull (findDisplay WANTED_ADD_DIALOG)};
