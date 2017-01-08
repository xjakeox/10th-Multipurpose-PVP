//gameMode.sqf
//Used for bluLead to set the gamemode to be played.
removeAllActions bluBoard;
bluBoard addAction ["<t color='#37FF58'>Team Deathmatch</t>", "setGameMode.sqf", 0];
bluBoard addAction ["<t color='#FF0000'>Search and Capture</t>", "setGameMode.sqf", 1];
bluBoard addAction ["<t color='#3374FF'>Hostage Rescue(2 Teams v 2 Teams)</t>", "setGameMode.sqf", 2];