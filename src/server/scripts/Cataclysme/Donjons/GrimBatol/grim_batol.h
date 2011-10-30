#ifndef DEF_GRIMBATOL_H
#define DEF_GRIMBATOL_H

enum Npcs
{
    // General Umbriss
    BOSS_GENERAL_UMBRISS              = 39625,
    
    // Forgemaster Throngus
    BOSS_FORGEMASTER_THRONGUS         = 40177,
    
    // Drahga Shadowburner
    BOSS_DRAHGA_SHADOWBURNER          = 40319,
    
    // Erudax
    BOSS_ERUDAX                       = 40484,
    
};

enum Data
{
    DATA_GENERAL_UMBRISS_EVENT         = 0,
    DATA_FORGEMASTER_THRONGUS_EVENT    = 1,
    DATA_DRAHGA_SHADOWBURNER_EVENT     = 2,
    DATA_ERUDAX_EVENT                  = 3,
};

#define MAX_ENCOUNTER 4

enum Data64
{
    DATA_GENERAL_UMBRISS,
    DATA_FORGEMASTER_THRONGUS,
    DATA_DRAHGA_SHADOWBURNER,
    DATA_ERUDAX,
};

enum Achievements
{
    ACHIEV_UMBRAGE_FOR_UMBRISS      = 5297,
};

#endif