//startDeathmatch.sqf
//Variables
_townSelectTDM = [0,1]; // 0 = Iguana(_iguanaTP) 1 = Tiberia(_tiberiaTP)
_iguanaTP = ["igTP1","igTP2","igTP3","igTP5","igTP6","igTP7","igTP8"];
_tiberiaTP = ["tibTP1","tibTP2","tibTP3","tibTP4","tibTP5","tibTP6","tibTP7"];


[{systemChat "-------------------------------------------------"}, "BIS_fnc_call",true,false] spawn BIS_fnc_MP;
[{systemChat "Team Deathmatch has been selected as the gamemode."}, "BIS_fnc_call",true,false] spawn BIS_fnc_MP;
[{systemChat "All teams indicated they are ready. TDM will begin shortly. Please stand-by for teleport."}, "BIS_fnc_call",true,false] spawn BIS_fnc_MP;
[{systemChat "-------------------------------------------------"}, "BIS_fnc_call",true,false] spawn BIS_fnc_MP;

sleep 5;

//Pick a town for TDM
_townSelected = _townSelectTDM call bis_fnc_selectRandom;
switch(_townSelected) do
{
	case 0:
	{
		[{systemChat "The town of Iguana has been selected for TDM. Please check map for boundires."}, "BIS_fnc_call",true,false] spawn BIS_fnc_MP;
		{
			//Loop through all groups, and place the soldiers at a location
			_spawnPoint = _iguanaTP call bis_fnc_selectRandom;
			if ((count _iguanaTP) > 0) then { _iguanaTP = _iguanaTP - [_spawnPoint]; };
			//Place Units
			{
				_x SetPos getMarkerPos(_spawnPoint);
			} forEach units _x;
		} forEach allGroups;
		
		"igZone1" setMarkerAlpha 1;
		"igZone2" setMarkerAlpha 1;
	};
	case 1:
	{
		[{systemChat "The town of Tiberia has been selected for TDM. Please check map for boundires."}, "BIS_fnc_call",true,false] spawn BIS_fnc_MP;
		{
			//Loop through all groups, and place the soldiers at a location
			_spawnPoint = _tiberiaTP call bis_fnc_selectRandom;
			if ((count _tiberiaTP) > 0) then { _tiberiaTP = _tiberiaTP - [_spawnPoint]; };
			//Place Units
			{
				_x SetPos getMarkerPos(_spawnPoint);
			} forEach units _x;
		} forEach allGroups;
		
		"tibZone1" setMarkerAlpha 1;
	};
};

gamestarting = 0;
publicVariable "gamestarting";