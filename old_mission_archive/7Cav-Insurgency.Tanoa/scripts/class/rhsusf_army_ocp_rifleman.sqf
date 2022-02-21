
// Gunslinger Rifleman, Driver, Gunner

private _state = param [0, "", [""]];

if (_state == "init") then {

    call scripts_fnc_arsenalInfantry;

    [player] call CLIENT_SetInfantryVehiclePermissions;

    [] call HUD_Infantry_Initialize;

    player setVariable ["SPM_BranchOfService", "infantry"];

};

if (_state == "respawn") then {

};