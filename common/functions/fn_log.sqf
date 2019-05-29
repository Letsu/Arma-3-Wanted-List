#include "..\script_macros.hpp"
/*
 * Author: Johannes "Letus" Bindriem
 * Logs an Message to the Log. When DBUG ist enabled message also Displayed in the system chat
 *
 * Arguments:
 * 0: Log message <STRING>
 *
 * Return Value:
 * none
 *
 * Example:
 * ["Not working"] call lts_common_fnc_log
 *
 * Public: Yes
 */
 params [
     ["_message", "No Message passed to Log", [""]]
 ];


diag_log _message;
//Check if DBUG is enabled and Display message also to chat
#ifdef LTS_DBUG
    systemChat _message;
#endif
