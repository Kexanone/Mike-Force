#include "script_component.hpp"

// Server side pre init
if (isServer) then {
    // Skip nighttime
    private _nightStart = NIGHT_START_DEFAULT;
    private _nightDuration = NIGHT_DURATION_DEFAULT;
    switch (toLower worldName) do {
        case "vn_khe_sanh": {
            _nightStart = NIGHT_START_KHE_SANH;
            _nightDuration = NIGHT_DURATION_KHE_SANH;
        };
    };
    ["KEX_nightSkipper", {
        params ["_nightStart", "_nightDuration"];
        if (dayTime >= _nightStart) then {
            skipTime _nightDuration;
            [] remoteExec ["vn_mf_fnc_display_location_time", 0];
        };
    }, [_nightStart, _nightDuration], 120] call para_g_fnc_scheduler_add_job;
};
