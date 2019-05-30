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

_data = [[[0, "Was nicht so Cooles", "PID", "Player Name", "Cop PID", "Cop Name", "Time", "Description", 1213]], [1, "Ist Böse", "PID", "PLayer Name", "Cop PID", "Cop Name", "Time", "Description"]]; //Only Testing

switch (_type) do {
    case (0): /* Send request to Database */{
        //Send Database Request
    };

    case (1): /*Get Data from Database*/ {
        //Check if Data is valied
        if ((count _data) isEqualTo 0)  exitWith { LOG("Empty Data Array Passed to Wanted List") };
        if (_data isEqualTo [])         exitWith { LOG("Empty Data Array Passed to Wanted List") };

        //Add Data to Listboxes
        private _DISPLAY    = findDisplay WANTED_DIALOG;
        private _LBWANTED   = _DISPLAY displayCtrl 1009;
        private _LBNOTE     = _DISPLAY displayCtrl 1013;

        //Split Data from Database
        private _wantedData = SEL(_data, 0);
        private _noteData   = SEL(_data, 1);
        [_wantedData] spawn lts_wanted_fnc_showPlayerInfo; //Add Basic Information about the Player

        //Clear & Fill Wanted List
        lbClear _LBWANTED;
        lbClear _LBNOTE;
        //Fill Wanted List
        {
            private _title = SEL(_x, 1);
            _LBWANTED lbAdd _title;
            _LBWANTED lbSetData [(lbSize _LBWANTED)-1, str(_x)];
        } forEach _wantedData;

        //Fill Notes List
        {
            private _title = SEL(_x, 1);
            _LBNOTE lbAdd _title;
            _LBNOTE lbSetData [(lbSize _LBNOTE)-1, str(_x)];
        } forEach _noteData;
    };
};
