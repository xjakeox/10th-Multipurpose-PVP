/// Variables ///
_boardArray = [ bluBoard, opBoard, rusBoard, pmcBoard];

/// ENTRY POINT ///
waitUntil {!isNull player};

//No point in looping, as this is an entry point for one person, and one person only(CLIENT).
//Check for the pattern Lead, as all leads have this in their name.
if (((format ["%1", player]) find "Lead") != -1) then
{
   {
		_x addAction ["<t color='#37FF58'>Ready Team</t>", "readyTeam.sqf"];
		_x addAction ["<t color='#FF0000'>Unready Team</t>", "unreadyTeam.sqf"];
		_x addAction ["<t color='#3374FF'>Start Game</t>", "startGame.sqf"];
   } forEach _boardArray;
	
	sleep 1;
	
	switch(player) do
	{
		case bluLead:
		{
			bluReady = 0;
			publicVariable "bluReady";
			bluBoard addAction ["<t color='#FFC300'>Mission Settings</t>", "missionSettings.sqf"];
		};
		
		case opLead:
		{
			opReady = 0;
			publicVariable "opReady";
		};
		
		case rusLead:
		{
			rusReady = 0;
			publicVariable "rusReady";
		};
	
		case pmcLead:
		{
			pmcReady = 0;
			publicVariable "pmcReady";
		};
	};
};

//Kill civilians... they are spectators
if ((side player) == civilian) then 
{
   setPlayerRespawnTime 999999;
   player setDamage 500;
};

