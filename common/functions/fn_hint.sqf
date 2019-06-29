#include "..\script_macros.hpp"
/*
 * Author: Johannes "Letus" Bindriem
 * Shows an Hint on PLayers Screen
 *
 * Arguments:
 * 0: Message <STRING>
 *
 * Return Value:
 * NONE
 *
 * Example:
 * ["Hallo"] call lts_common_fnc_hint
 *
 * Public: Yes
 */

params [
    ["_message", "ERROR", [""]]
];

if (_message isEqualTo "ERROR") exitWith { LOG("No Message passed to hint function") };

//@Todo: Add Message System based on Hint
hint _message;
