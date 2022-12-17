#include "script_component.hpp"

// Client side pre init
if (hasInterface) then {
    // Set fatigue on player respawn
    ["KEX_playerRespawned", [{
        params ["_handlerParams", "_eventParams"];
        _eventParams params ["_newUnit"];
        _newUnit enableFatigue ENABLE_FATIGUE;
    }, []]] call para_g_fnc_event_add_handler;
};
