//DBUG
#define LTS_DBUG

//Functions
#define LOG(TEXT) [TEXT] call lts_common_fnc_log
#define HINTMSG(TEXT) [TEXT] call lts_common_fnc_hint
#define SEL(VAR, INDEX) VAR param [INDEX]


//Dialogs
#define ARMA_GAMESCREEN 46
#define ARMA_ESCSCREEN 49
