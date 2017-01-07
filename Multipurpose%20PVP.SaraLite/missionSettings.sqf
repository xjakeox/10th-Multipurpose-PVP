//missionSettings.sqf
//Used for bluLead to determine the gamemode to be played.
_readyTeam = _this select 0;
_i = 0;

while { _i < 4} do {
	_readyTeam removeAction _i;
	_i + 1;
}