_readyTeam = _this select 0;

switch(_readyTeam) do
{ 
	case bluBoard:
	{ 
		if(bluReady == 0) then
		{
			hint "Team is not currently ready";
		}
		else
		{
			bluReady = 0;
			[{systemChat "US Army is no longer ready to proceed."},"BIS_fnc_call",true,false] spawn BIS_fnc_MP;
			publicVariable "bluReady";
		};
	};
	case opBoard:
	{
		if(opReady == 0) then
		{
			hint "Team is not currently ready";
		}
		else
		{
			opReady = 0;
			[{systemChat "Taliban forces are no longer ready to proceed."},"BIS_fnc_call",true,false] spawn BIS_fnc_MP;
			publicVariable "opReady";
		};
	};
	case rusBoard:
	{
		if(rusReady == 0) then
		{
			hint "Team is not currently ready";
		}
		else
		{
			rusReady = 0;
			[{systemChat "Russian Army is no longer ready to proceed."},"BIS_fnc_call",true,false] spawn BIS_fnc_MP;
			publicVariable "rusReady";
		};
	};
	case pmcBoard:
		if(pmcReady == 0) then
		{
			hint "Team is not currently ready";
		}
		else
		{
			pmcReady = 0;
			[{systemChat "PMC is no longer ready to proceed."},"BIS_fnc_call",true,false] spawn BIS_fnc_MP;
			publicVariable "pmcReady";
		};
};