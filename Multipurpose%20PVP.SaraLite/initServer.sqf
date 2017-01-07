/*******************************************************************
initServer.sqf                                                 *****
**** For all intent and purposes, entry point for server-sided *****
**** sqf scripting.                                            *****
*******************************************************************/
//Configuration
gameStarting = 0;
// Set to 1 by default in case a team doesn't join in. Set back to 0 when team lead joins
bluReady = 1; 
opReady = 1;
rusReady = 1;
pmcReady = 1;

publicVariable["gameStarting", "bluReady", "opReady", "rusReady", "pmcReady"];

//Disable Saving
enableSaving [false, false];
