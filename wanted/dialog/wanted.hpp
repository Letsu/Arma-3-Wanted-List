#include "..\script_macros.hpp"
 /*
 * Author: Johannes "Letus" Bindriem
 * Description: Main Dialog for the Wanted List
 *
 *
 * License: This file is only for authorized Servers. For more informations contact me on my e-mail: johannes.bindriem@yahoo.de
 */


class wanted {
    idd = WANTED_DIALOG;
    movingenable = 0;
    enablesimulation = 1;

    class controlsBackground {
        class background : Lts_RscText {
            idc = -1;
            x = 0.1828125 * safezoneW + safezoneX;
            y = 0.150442477876106 * safezoneH + safezoneY;
            h = 0.787793018682399 * safezoneH;
            w = 0.652083333333333 * safezoneW;
            colorbackground[] = {0,0,0,0.607843137254902};
        };

    class textPlayerList : Lts_RscText {
            idc = -1;
            x = 0.1890625 * safezoneW + safezoneX;
            y = 0.166357423795477 * safezoneH + safezoneY;
            h = 0.037 * safezoneH;
            w = 0.110416666666667 * safezoneW;
            text = "Spieler Liste:";
        };

        class textSearch : Lts_RscText {
            idc = -1;
            x = 0.1890625 * safezoneW + safezoneX;
            y = 0.851706489675516 * safezoneH + safezoneY;
            h = 0.037 * safezoneH;
            w = 0.110416666666667 * safezoneW;
            text = "Nach Bewohner Suchen:";
        };
    };

    class controls {
        class listOnlinePlayers : Lts_RscListBox {
            idc = 1003;
            x = 0.1890625 * safezoneW + safezoneX;
            y = 0.214413632251721 * safezoneH + safezoneY;
            w = 0.110416666666667 * safezoneW;
            h = 0.605645364798426 * safezoneH;
            /* onlbselchanged = "call lts_dialog_fnc_onPlayerWantedChange"; */
        };

        class listWantedEntrys : Lts_RscListBox {
            idc = 1009;
            x = 0.4109375 * safezoneW + safezoneX;
            y = 0.166357423795477 * safezoneH + safezoneY;
            w = 0.134895833333333 * safezoneW;
            h = 0.344950344149459 * safezoneH;
            /* onlbselchanged = "call lts_dialog_fnc_onWantedWantedChange"; */
        };

        class buttonSearch : Lts_RscButton {
            idc = 1007;
            x = 0.280729166666667 * safezoneW + safezoneX;
            y = 0.887571288102262 * safezoneH + safezoneY;
            w = 0.0197916666666667 * safezoneW;
            h = 0.039216 * safezoneH;
            text = "Los";
        };

        class buttonAddWanted : Lts_RscButton {
            idc = 1010;
            x = 0.306893 * safezoneW + safezoneX;
            y = 0.166357423795477 * safezoneH + safezoneY;
            w = 0.095589 * safezoneW;
            h = 0.039216 * safezoneH;
            text = "Straftat Hinzufügen";
            /* action = "call lts_dialog_fnc_callWantedAdd"; */
        };

        class buttonRemoveWanted : Lts_RscButton {
            idc = 1011;
            x = 0.306893 * safezoneW + safezoneX;
            y = 0.214413632251721 * safezoneH + safezoneY;
            w = 0.095589 * safezoneW;
            h = 0.039216 * safezoneH;
            text = "Entlasten";
            /* action = "call lts_dialog_fnc_wantedRemove"; */
        };

        class ButtonAddWantedNote : Lts_RscButton {
            idc = 1012;
            x = 0.30625 * safezoneW + safezoneX;
            y = 0.26259455653884 * safezoneH + safezoneY;
            w = 0.095589 * safezoneW;
            h = 0.039216 * safezoneH;
            text = "Info Hinzufügen";
            /* action = "call lts_dialog_fnc_callwantedNoteAdd"; */
        };

        class ButtonAddNote : Lts_RscButton {
            idc = 1015;
            x = 0.306893 * safezoneW + safezoneX;
            y = 0.53338249754179 * safezoneH + safezoneY;
            w = 0.095589 * safezoneW;
            h = 0.039216 * safezoneH;
            text = "Info Hinzufügen??";
        };

        class ButtonEditNote : Lts_RscButton {
            idc = 1016;
            x = 0.306893 * safezoneW + safezoneX;
            y = 0.57921205899705 * safezoneH + safezoneY;
            w = 0.095589 * safezoneW;
            h = 0.039216 * safezoneH;
            text = "Info Bearbeiten";
        };

        class ButtonRemoteNote : Lts_RscButton {
            idc = 1017;
            x = 0.306893 * safezoneW + safezoneX;
            y = 0.622476562438545 * safezoneH + safezoneY;
            w = 0.095589 * safezoneW;
            h = 0.039216 * safezoneH;
            text = "Info Entfernen";
        };

        class RscListBox3 : Lts_RscListBox {
            idc = 1013;
            x = 0.4109375 * safezoneW + safezoneX;
            y = 0.53338249754179 * safezoneH + safezoneY;
            w = 0.134895833333333 * safezoneW;
            h = 0.385004916420846 * safezoneH;
        };

        class RscStructuredText1 : Lts_RscStructuredText {
            idc = 1014;
            x = 0.5546875 * safezoneW + safezoneX;
            y = 0.53338249754179 * safezoneH + safezoneY;
            h = 0.385004916420846 * safezoneH;
            w = 0.266145833333334 * safezoneW;
        };
        class RscStructuredText2 : Lts_RscStructuredText {
            idc = 1018;
            x = 0.30625 * safezoneW + safezoneX;
            y = 0.309734513274336 * safezoneH + safezoneY;
            h = 0.200589970501475 * safezoneH;
            w = 0.095589 * safezoneW;
        };
        //TEST!!!!!
        class wantedContent : Lts_RscControlsGroup
        {
        	type = 15;
        	idc = -1;
        	style = 0;
             x = 0.55625 * safezoneW + safezoneX;
             y = 0.166357423795477 * safezoneH + safezoneY;
             h = 0.344950344149459 * safezoneH;
             w = 0.266145833333334 * safezoneW;

        	class VScrollbar
        	{
        		color[] = {1, 1, 1, 1};
        		width = 0.021;
        		autoScrollSpeed = -1;
        		autoScrollDelay = 5;
        		autoScrollRewind = 0;
        	};

        	class ScrollBar
        	{
        		color[] = {1,1,1,0.6};
        		colorActive[] = {1,1,1,1};
        		colorDisabled[] = {1,1,1,0.3};
        		thumb = "#(argb,8,8,3)color(1,1,1,1)";
        		arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
        		arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
        		border = "#(argb,8,8,3)color(1,1,1,1)";
        	};

        	class Controls
        	{
        		class RscStructuredText0 : Lts_RscStructuredText
        		{
        			idc = 1008;
        			colorBackground[] = {1,1,1,0};
        			x = 0;
        			y = 0;
        			w = (SafezoneW  * 0.3);
        			h = (SafezoneH  * 3);
        			text	= "";
        		};
        	};
        };


        // class RscStructuredText0 : RscStructuredText
        // {
            // idc = 1008;
            // x = 0.55625 * safezoneW + safezoneX;
            // y = 0.166357423795477 * safezoneH + safezoneY;
            // h = 0.344950344149459 * safezoneH;
            // w = 0.266145833333334 * safezoneW;
        // };
        //TEST!!!!


        class editSearch : Lts_RscEdit {
            idc = 1004;
            x = 0.1890625 * safezoneW + safezoneX;
            y = 0.887571288102262 * safezoneH + safezoneY;
            h = 0.039216 * safezoneH;
            w = 0.0911458333333333 * safezoneW;
            text = "Funktion Nicht Verfügbar";
        };
    };
};
