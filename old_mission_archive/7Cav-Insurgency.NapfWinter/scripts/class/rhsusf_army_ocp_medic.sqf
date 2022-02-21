
// Atlas 1/2

private _state = param [0, "", [""]];

if (_state == "init") then {

    call scripts_fnc_arsenalMedic;

    player setvariable ["ace_isMedic", 2];

    [player] call CLIENT_SetInfantryVehiclePermissions;

    {
        player setVariable [_x, [[TypeFilter_LogisticsVehicles, [], {}]] + (player getVariable _x)];
    } forEach ["VP_Driver"];

    [] call HUD_Infantry_Initialize;

    player setVariable ["SPM_BranchOfService", "infantry"];

};

if (_state == "respawn") then {

    player setvariable ["ace_isMedic", 2];

};