#include "..\script_macros.hpp"
/*
 * Author: Johannes "Letus "Bindriem
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
params [
    ["_data", "", [""]]
];

_data = parseSimpleArray _data;
