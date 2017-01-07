//startGame.sqf
//Check to see if teams are ready
_readyPoints = bluReady + opReady + rusReady + pmcReady;
_TDMTP = ["tdmspawn1","tdmspawn2","tdmspawn3","tdmspawn4","tdmspawn5","tdmspawn6","tdmspawn6","tdmspawn7"];

if (gameStarting == 1) then
{
	"Game is starting. Please be patient and do not spam the command." remoteExec ["hint"];
}
else
{
	if (_readyPoints == 4) then
	{
		gameStarting = 1;
		publicVariable "gameStarting";
		[{systemChat "All teams indicated they are ready. TDM will begin shortly. Please stand-by for teleport."}, "BIS_fnc_call",true,false] spawn BIS_fnc_MP;
		
		sleep 5;
      
		//Loop through all groups, and place the soldiers at a location
      {
         //Random a location, and throw it out of the array
         //Added a check against empty arrays, as attempting to remove from an empty array is stupid
         _spawnPoint = _TDMTP call bis_fnc_selectRandom;
         if ((count _TDMTP) > 0) then { _TDMTP = _TDMTP - [_spawnPoint]; };
         
         //Place units in a given group
         {
            _x setPos getMarkerPos(_spawnPoint);
         } forEach units _x;
         
      } forEach allGroups;
      
		gameStarting = 0;
		publicVariable "gameStarting";
	}
	else
	{
		"One or more teams are not ready. Please ask team leaders to ready up." remoteExec ["hint"];
	};
};