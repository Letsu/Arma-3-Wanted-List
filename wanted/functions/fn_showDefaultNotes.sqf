#include "..\script_macros.hpp"
/*
 * Author: Johannes "Letus" Bindriem
 * Add Dafualt Notes like Cars and Houses to the List
 * Functions can called in two types:
 *  0: Sends an Request from an Client for Data to the Database
 *  1: Gets Data from Database to fill Data
 *
 * Arguments:
 * 0: PID of Target <STRING>
 * 1: Request Type 0: Post, 1: Get <NUMBER> (default: 0)
 * 2: Data from Database(only when type = 1) <ARRAY> (default: [])
 *
 * Return Value:
 * NONE
 *
 * Example:
 * ["example"] call ace_[module]_fnc_[functionName]
 *
 * Public: [Yes/No]
 */
params [
    ["_pid", getPlayerUID player, [""]],
    ["_type", 0, [0]],
    ["_data", [], [[]]]
];

switch (_type) do {
    case (0): {
        //Add Database Request
    };

    case (1): {
        private _DISPLAY = findDisplay WANTED_DIALOG;
        private _NOTELIST = _DISPLAY displayCtrl 1013;
        //Request Normal Data: Bank, in Jail, Aliases, Licenses,
        _NOTELIST lbAdd "Allgemeine Informationen";
        //Request Data about Vehicles: Vehicle Type, NUmber plate, Buy Time(insert_time), Color?,
        _NOTELIST lbAdd "Fahrzeuge";
        //Request Data about Houses&garages: Pos, Buy Time(insert_time)
        _NOTELIST lbAdd "Häuser";
    };
};
