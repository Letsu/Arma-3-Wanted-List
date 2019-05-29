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

waitUntil {!isNull (findDisplay 46)};

createDialog "wanted";
