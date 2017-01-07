_readyTeam = _this select 0;

switch(_readyTeam) do
{ 
	case bluBoard:
	{ 
		bluReady = 1;
		[{systemChat "US Army is ready to proceed."},"BIS_fnc_call",true,false] spawn BIS_fnc_MP;
		publicVariable "bluReady";
	};
	case opBoard:
	{
		opReady = 1;
		[{systemChat "Taliban forces are ready to proceed."},"BIS_fnc_call",true,false] spawn BIS_fnc_MP;
		publicVariable "opReady";
	};
	case rusBoard:
	{
		rusReady = 1;
		[{systemChat "Russian Army is ready to proceed."},"BIS_fnc_call",true,false] spawn BIS_fnc_MP;
		publicVariable "rusReady";
	};
	case pmcBoard:
	{
		pmcReady = 1;
		[{systemChat "PMC is ready to proceed."},"BIS_fnc_call",true,false] spawn BIS_fnc_MP;
		publicVariable "pmcReady";
	};
};