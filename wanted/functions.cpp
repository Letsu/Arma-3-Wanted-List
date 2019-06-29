class lts_wanted {
    tag = "lts_wanted";
    class functions {
        file = "wanted\functions";
        class callWanted        {};
        class listPlayersEntrys {};
        class showWantedInfo    {};
        class showPlayerInfo    {};
        class showNoteInfo      {};
        class showDefaultNotes  {};
    };
};

class lts_wanted_interface {
    tag = "lts_wanted_interface";
    class interface_functions {
        file = "wanted\functions\interface";
        class addNote       {};
        class addWanted     {};
        class disableNote   {};
        class disableWanted {};
    };
};

class lts_wanted_dialog {
    tag = "lts_wanted_dialog";
    class dialog_functions {
        file = "wanted\dialog\functions";
        class lbNoteChanged                 {};
        class lbPlayersChanged              {};
        class lbWantedChanged               {};
        class wantedAddButtonPressed        {};
        class addWantedAddButtonPressed     {};
    };
};
