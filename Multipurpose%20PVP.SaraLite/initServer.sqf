/*******************************************************************
initServer.sqf                                                 *****
**** For all intent and purposes, entry point for server-sided *****
**** sqf scripting.                                            *****
*******************************************************************/
//Configuration
gameStarting = 0;
publicVariable "gameStarting";
modeToPlay = 0; // Set to Team Deathmatch by default;
publicVariable "modeToPlay";
// Set to 1 by default in case a team doesn't join in. Set back to 0 when team lead joins
bluReady = 1;
publicVariable "bluReady";
opReady = 1;
publicVariable "opReady";
rusReady = 1;
publicVariable "rusReady";
pmcReady = 1;
publicVariable "pmcReady";

//Marker Configuration
_markersToHide = ["igZone1","igZone2","tibZone1","hostageZone"];
{
	_x setMarkerAlpha 0;
} forEach _markersToHide;

//Disable Saving
enableSaving [false, false];
