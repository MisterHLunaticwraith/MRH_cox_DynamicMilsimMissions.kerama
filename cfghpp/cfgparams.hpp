// ============================================================================================

// F3 - Debug Mode
// WARNING: DO NOT DISABLE THIS COMPONENT

    class f_param_debugMode
    {
            title = "$STR_f_param_debugMode";
            values[] = {0,1};
            texts[] = {"Off","On"};
            default = 0;
    };

// ============================================================================================

// F3 - Mission Timer/Safe Start

    class f_param_mission_timer
    {
            title = "$STR_f_param_mission_timer";
            values[] = {0,1,2,3,4,5,6,7,8,9,10,15};
            texts[] = {"$STR_f_param_mission_timer_off","1","2","3","4","5","6","7","8","9","10","15"};
            default = 0;
    };

// ============================================================================================
// F3 - End of Params code blocks.

    class AdminCasualtiesCap
    {
            title = "Pourcentage de pertes acceptables.";
            values[] = {0,10,20,30,40,50,60,70,80,90,100};
            texts[] = {"0","10","20","30","40","50","60","70","80","90","100"};
            default = 60;
    };