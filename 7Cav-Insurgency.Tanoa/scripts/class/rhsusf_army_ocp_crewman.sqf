
// Sabre crewman

private _state = param [0, "", [""]];

if (_state == "init") then
{
    call scripts_fnc_arsenalTanker;
    
    player setvariable ["ACE_IsEngineer", 1];

    [player] call CLIENT_SetArmorCrewVehiclePermissions;

    [] call HUD_Infantry_Initialize;

    player setVariable ["SPM_BranchOfService", "infantry"];

};

if (_state == "respawn") then {

    player setvariable ["ACE_IsEngineer", 1];

};