#include "script_component.hpp"

// Client side pre init
if (hasInterface) then {
    ["PlayerInitClientDone", [{
        player addEventHandler ["respawn", {["KEX_playerRespawned", _this] call para_g_fnc_event_dispatch_immediate}];
        ["KEX_playerRespawned", [player, objNull]] call para_g_fnc_event_dispatch_immediate;
    }, []]] call para_g_fnc_event_add_handler;
};
