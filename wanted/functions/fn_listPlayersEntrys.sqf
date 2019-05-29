#include "..\script_macros.hpp"
/*
 * Author: Johannes "Letus" Bindriem
 * Adds Players Note & Wanted Entrys to Listboxes
 * Functions can called in two types:
 *  0: Sends an Request from an Client for Data to the Database
 *  1: Gets Data from Database to fill Data
 *
 * Arguments:
 * 0: UID of request PLayer <STRiNG>
 * 1: Request Type 0: Post, 1: Get <NUMBER> (default: 0)
 * 2: Data from Database(only when type = 1) <ARRAY> (default: [])
 *
 * Return Value:
 * NONE
 *
 * Example:
 * ["UID"] call lts_wanted_fnc_listPlayersEntrys
 *
 * Public: Yes
 */

params [
    ["_uid", getPlayerUID player, [""]],
    ["_type", 0, [0]],
    ["_data", [], [[]]]
];

switch (_type) do {
    case (0): /* Send request to Database */{
        //Send Database Request
    };

    case (1): /*Get Data from Database*/ {
        //Check if Data is valied
        if ((count _data) isEqualTo 0)  exitWith { LOG("Empty Data Array Passed to Wanted List") };
        if (_data isEqualTo [])         exitWith { LOG("Empty Data Array Passed to Wanted List") };



    };
};
