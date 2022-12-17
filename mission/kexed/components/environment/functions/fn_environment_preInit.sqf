#include "script_component.hpp"

// Server side pre init
if (isServer) then {
    // Skip nighttime
    ["KEX_nightSkipper", {
        if (dayTime >= NIGHT_START) then {
            skipTime NIGHT_DURATION;
            [] remoteExec ["vn_mf_fnc_display_location_time", 0];
        };
    }, [], 120] call para_g_fnc_scheduler_add_job;
};
