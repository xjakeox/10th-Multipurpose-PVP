//StartHostage.sqf
_roles = ["oneDefense","twoDefense","oneAttack","twoAttack"];
_currRole = "";

[{systemChat "-------------------------------------------------"}, "BIS_fnc_call",true,false] spawn BIS_fnc_MP;
[{systemChat "Hostage Rescue has been selected as the gamemode."}, "BIS_fnc_call",true,false] spawn BIS_fnc_MP;
[{systemChat "All teams indicated they are ready. Hostage Rescue will begin shortly. Please stand-by for teleport."}, "BIS_fnc_call",true,false] spawn BIS_fnc_MP;
[{systemChat "-------------------------------------------------"}, "BIS_fnc_call",true,false] spawn BIS_fnc_MP;

sleep 2;

[] execvm "genHostage.sqf";
"hostageZone" setMarkerAlpha 1;

sleep 3;

//Select which teams will be where
{
	_currRole = _roles call bis_fnc_selectRandom;
	if ((count _roles) > 0) then { _roles = _roles - [_currRole]; };
	if (((format ["%1", _currRole]) find "Defense") != -1) then
	{
		{
			_x SetPos getMarkerPos("hostageDefTeam");
		} forEach units _x;
		sleep 1;
	}
	else
	{
		{
			_x SetPos getMarkerPos("hostageAttTeam");
		} forEach units _x;
		sleep 1;
	};
	
} forEach allGroups;

_hostage = createVehicle ['C_journalist_F', [5371.609,4633.439,10.58], [], 0, 'CAN_COLLIDE'];
[_hostage, true] call ACE_captives_fnc_setHandcuffed;

gameStarting = 0;
publicVariable "gameStarting";

[{systemChat "You have 5 minutes to prep as a team. Get going! Hostage zone is marked on the map."}, "BIS_fnc_call",true,false] spawn BIS_fnc_MP;
sleep 300; // 5 minutes combiend prep time and then round starts.
[{systemChat "Round starts now! Attacking team has 30 minutes to rescue the VIP."}, "BIS_fnc_call",true,false] spawn BIS_fnc_MP;
null = [340,1800,false,false,false] execvm "AL_dust_storm\al_duststorm.sqf"; //30 minute dust storm
sleep 300;
[{systemChat "25 Minutes Remaining"}, "BIS_fnc_call",true,false] spawn BIS_fnc_MP;
sleep 300;
[{systemChat "20 Minutes Remaining"}, "BIS_fnc_call",true,false] spawn BIS_fnc_MP;
sleep 300;
[{systemChat "15 Minutes Remaining"}, "BIS_fnc_call",true,false] spawn BIS_fnc_MP;
sleep 300;
[{systemChat "10 Minutes Remaining"}, "BIS_fnc_call",true,false] spawn BIS_fnc_MP;
sleep 300;
[{systemChat "5 Minutes Remaining"}, "BIS_fnc_call",true,false] spawn BIS_fnc_MP;
sleep 60;
[{systemChat "4 Minutes Remaining"}, "BIS_fnc_call",true,false] spawn BIS_fnc_MP;
sleep 60;
[{systemChat "3 Minutes Remaining"}, "BIS_fnc_call",true,false] spawn BIS_fnc_MP;
sleep 60;
[{systemChat "2 Minutes Remaining"}, "BIS_fnc_call",true,false] spawn BIS_fnc_MP;
sleep 60;
[{systemChat "1 Minutes Remaining"}, "BIS_fnc_call",true,false] spawn BIS_fnc_MP;
sleep 60;
[{systemChat "Round is over. Please end the mission."}, "BIS_fnc_call",true,false] spawn BIS_fnc_MP;

