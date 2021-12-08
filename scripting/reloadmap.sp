#include <sourcemod>
#include <sdktools>
#pragma newdecls required
 
public Plugin myinfo =
{
    name = "Reloadmap",
    author = "WidovV",
    description = "Reloadmap plugin.",
    version = "0.1",
    url = "https://github.com/WidovV"
};

public void OnPluginStart() 
{
        /* Reloadmap Commands */
    RegAdminCmd("sm_reloadmap", command_reloadmap, ADMFLAG_CHANGEMAP);
    RegAdminCmd("sm_rm", command_reloadmap, ADMFLAG_CHANGEMAP);
    RegAdminCmd("sm_rmap", command_reloadmap, ADMFLAG_CHANGEMAP);
}

public Action command_reloadmap(int client, int args)
{
    char sMap[64];
    GetCurrentMap(sMap, 64);

    ClientCommand(client, "sm_map %s", sMap);
}
