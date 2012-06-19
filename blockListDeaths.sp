#pragma semicolon 1
#include <sourcemod>

public Plugin:myinfo =
{
    name = "block_listdeaths",
    author = "Billehs",
    description = "Blocks the `listdeaths` command; prevents a server exploit",
    version = "1.0.0.0",
    url = "https://github.com/CrimsonTautology/sm_blocklistdeaths"
};

public OnPluginStart()
{
	RegConsoleCmd("listdeaths", Command_ListDeaths);
}
 
public Action:Command_ListDeaths(client, args)
{
    if(IsClientInGame(client)){
        new String:clientName[200];
        GetClientName(client, clientName, sizeof(clientName));
        PrintToChat(client, "[SM] listdeaths blocked; stop that jerkface!");
        PrintToChatAll("[SM] %s is a jerk face and is trying to crash the server", clientName);
        return Plugin_Handled;
    }

    return Plugin_Continue;

}



