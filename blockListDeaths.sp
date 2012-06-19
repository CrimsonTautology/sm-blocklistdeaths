#pragma semicolon 1
#include <sourcemod>

public Plugin:myinfo =
{
    name = "block_listdeaths",
    author = "Billehs",
    description = "Blocks the `listdeaths` command; prevents a server exploit",
    version = "1.0.0.0",
    url = "http://www.sourcemod.net/"
};

public OnPluginStart()
{
	RegConsoleCmd("listdeaths", Command_ListDeaths);
}
 
public Action:Command_ListDeaths(client, args)
{
    if(IsClientInGame(client)){
        PrintToChat(client, "[SM] listdeaths blocked; stop that jerkface!");
        return Plugin_Handled;
    }

    return Plugin_Continue;

}



