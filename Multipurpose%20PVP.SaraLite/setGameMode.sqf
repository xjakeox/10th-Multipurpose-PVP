//setGameMode.sqf
//First remove the old actions and add back the original commands.
removeAllActions bluBoard;
bluBoard addAction ["<t color='#37FF58'>Ready Team</t>", "readyTeam.sqf"];
bluBoard addAction ["<t color='#FF0000'>Unready Team</t>", "unreadyTeam.sqf"];
bluBoard addAction ["<t color='#3374FF'>Start Game</t>", "startGame.sqf"];
bluBoard addAction ["<t color='#FFC300'>Game Mode</t>", "gameMode.sqf"];

_gamemode = _this select 3;
modeToPlay = _gamemode;
publicVariable "modeToPlay";

switch(_gamemode) do 
{
	case 0:
	{
		[{systemChat "The game mode has been set to Team Deathmatch"},"BIS_fnc_call",true,false] spawn BIS_fnc_MP;
	};
	case 1:
	{
		[{systemChat "The game mode has been set to Search and Capture"},"BIS_fnc_call",true,false] spawn BIS_fnc_MP;
	};
	case 2:
	{
		[{systemChat "The game mode has been set to Hostage Rescue(2 Teams v 2 Teams)"},"BIS_fnc_call",true,false] spawn BIS_fnc_MP;
	};
};