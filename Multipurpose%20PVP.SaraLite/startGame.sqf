//startGame.sqf
//Variables
_readyPoints = bluReady + opReady + rusReady + pmcReady;

//Check to see if game is already starting.
if (gameStarting == 1) then
{
	"Game is starting. Please be patient and do not spam the command." remoteExec ["hint"];
}
// Check to make sure teams are ready
else
{
	if (_readyPoints == 4) then
	{
		//Make sure no other dummy tries to start the game.
		gameStarting = 1;
		publicVariable "gameStarting";
		//Execute the script relative to the gamemode selected.
		switch(modeToPlay) do
		{
			case 0:
			{
				[] execVM "startDeathmatch.sqf";
			};
			case 1:
			{
				"Search and Capture is not implemented yet. Please pick a different gamemode." remoteExec ["hint"];
				gamestarting = 0;
				publicVariable "gameStarting";
				//[] execVM "startSnC.sqf";
			};
			case 2:
			{
				[] execVM "startHostage.sqf";
			};
		};
	}
	else
	{
		"One or more teams are not ready. Please ask team leaders to ready up." remoteExec ["hint"];
	};
};