#include "..\script_macros.hpp"
/*
 * Author: Johannes "Letus" Bindriem
 * Shows detailt Informations about one selectet Wanted Entry
 *
 * Arguments:
 * 0: Wanted Array <ARRAY>
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [[]] call lts_wanted_fnc_showWantedInfo
 *
 * Public: [Yes/No]
 */
params [
    ["_data", "[]", [""]]
];
private _DISPLAY = findDisplay WANTED_DIALOG;
private _WANTEDTEXT = _DISPLAY displayCtrl 1008;
_data = parseSimpleArray _data;

private _text = format ["
<t size='2.0'>%1</t><br/>
Hinzugefügt von: %2 am %3.<br/>
Gesucht wird %4 wegen: <br/>
<t size='1.3'>%1</t><br/>
%5<br/>
<br/>
Strafe: %6$
", SEL(_data, 1), SEL(_data, 5), SEL(_data, 6), SEL(_data, 3), SEL(_data, 7), SEL(_data, 8)];

_WANTEDTEXT ctrlSetStructuredText (parseText _text)
