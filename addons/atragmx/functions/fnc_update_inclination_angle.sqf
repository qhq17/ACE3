/*
 * Author: Ruthberg
 * Updates the inclination angle input fields
 *
 * Arguments:
 * Reference input field ID <NUMBER>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * 0 call ace_atragmx_fnc_update_inclination_angle
 *
 * Public: No
 */
#include "script_component.hpp"

private ["_inclinationAngleCosine", "_inclinationAngleDegree"];
_inclinationAngleCosine = 0.5 max parseNumber(ctrlText 140041) max 1;
_inclinationAngleDegree = -60 max parseNumber(ctrlText 140040) min 60;

if (_this == 0) then {
    ctrlSetText [140040, Str(round(acos(_inclinationAngleCosine)))];
} else {
    ctrlSetText [140041, Str(floor(cos(_inclinationAngleDegree) * 100) / 100)];
};
