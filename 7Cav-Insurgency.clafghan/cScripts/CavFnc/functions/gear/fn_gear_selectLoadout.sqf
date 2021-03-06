#include "..\script_component.hpp"
params ["_unit"];

private _config        = missionConfigFile >> "CfgLoadouts";
private _variable      = _unit getVariable [QEGVAR(Gear,LoadoutClass), ""];
private _variableName  = vehicleVarName _unit;
private _className     = typeOf _unit;
private _sideConfig    = [side group _unit] call EFUNC(gear,getSideConfig);

switch (true) do {
    case (isClass (_config >> _variable)): {
        if !(_variable isKindOf [_sideConfig, _config]) then {
            ["The loadout for """ + _variable + """ does not inherit from """ + _sideConfig + """.", "Gear", true] call FUNC(logWarning);
        };
        _variable
    };
    case (isClass (_config >> _variableName)): {
        if !(_variableName isKindOf [_sideConfig, _config]) then {
            ["The loadout for """ + _variableName + """ does not inherit from """ + _sideConfig + """.", "Gear", true] call FUNC(logWarning);
        };
        _variableName
    };
    case (isClass (_config >> _className)): {
        if !(_className isKindOf [_sideConfig, _config]) then {
            ["The loadout for """ + _className + """ does not inherit from """ + _sideConfig + """.", "Gear", true] call FUNC(logWarning);
        };
        _className
    };
    case (isClass (_config >> _sideConfig)): {
        ["""" + _className + """ does not have a class specific loadout. Applying """ + _sideConfig + """ loadout.", "Gear", true] call FUNC(logWarning);
        _sideConfig
    };
    default {
        ["""" + _className + """ does not have a class specific loadout. Applying default loadout.", "Gear", true] call FUNC(logWarning);
        ""
    };
};
