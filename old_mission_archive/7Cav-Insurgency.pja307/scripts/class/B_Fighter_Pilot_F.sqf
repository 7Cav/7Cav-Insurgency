
// Hog, Eagle, and Titan Pilot

private _state = param [0, "", [""]];

if (_state == "init") then {

    call scripts_fnc_arsenalPlanePilot;

    player setvariable ["ACE_IsEngineer", 1];

    [player] call CLIENT_SetInfantryVehiclePermissions;

    {
        player setVariable [_x, [[TypeFilter_GroundAttackAircraft, [], {}]] + (player getVariable _x)];
    } forEach ["VP_Pilot"];

    {
        player setVariable [_x, [[TypeFilter_BaseServiceVehicles, [], {}]] + (player getVariable _x)];
    } forEach ["VP_Driver"];

    [] call HUD_Pilot_Initialize;

    player setVariable ["SPM_BranchOfService", "pilot"];

};

if (_state == "respawn") then {

    player setvariable ["ACE_IsEngineer", 1];

};