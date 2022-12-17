#include "script_component.hpp"

// Client side pre init
if (hasInterface) then {
    // Disable fatigue on player respawn
    ["KEX_playerRespawned", [{
        params ["_handlerParams", "_eventParams"];
        _eventParams params ["_newUnit"];
        _newUnit enableFatigue ((["Fatigue", 0] call BIS_fnc_getParamValue) isEqualTo 1);
    }, []]] call para_g_fnc_event_add_handler;
};
