/*
* Copyright (C) 2011 True Blood <http://www.trueblood-servers.com/>
*/

#ifndef DEF_RUBY_SANCTUM_H
#define DEF_RUBY_SANCTUM_H

static const Position SpawnPosHalion = {3144.93f, 527.233f, 72.8887f, 0.110395f};

enum eData
{
    DATA_BALTHARUS       = 0,
    DATA_RAGEFIRE        = 1,
    DATA_ZARITHRIAN      = 2,
    DATA_HALION          = 3,
    MAX_ENCOUNTER        = 4,
    DATA_XERESTRASZA     = 5,
    DATA_TWILIGHT_HALION = 6,
    DATA_DAMAGE          = 7
};

enum eAchievementData
{
    TWILIGHT_DESTROYER_NORMAL_10    = 4817,
    TWILIGHT_DESTROYER_NORMAL_25    = 4815,
    TWILIGHT_DESTROYER_HEROIC_10    = 4818,
    TWILIGHT_DESTROYER_HEROIC_25    = 4816
};

enum eCreature
{
    NPC_BALTHARUS        = 39751,
    NPC_BALTHARUS_SUMMON = 39899,
    NPC_ZARITHRIAN       = 39746,
    NPC_RAGEFIRE         = 39747,
    NPC_HALION           = 39863,
    NPC_TWILIGHT_HALION  = 40142,
    NPC_XERESTRASZA      = 40429,
    NPC_ONYX_FLAMECALLER = 39814,
    NPC_METEOR_STRIKE    = 40041,
    NPC_METEOR_FLAME     = 40042,
    NPC_SUMMON_HALIOH    = 40044
};

enum eGameObject
{
    GO_FIRE_FIELD       = 203005,
    GO_FLAME_WALLS      = 203006,
    GO_FLAME_WALLS2     = 203007,
    GO_FLAME_WALLS3     = 203624,
    GO_TWILIGHT_PORTAL1 = 202794,
    GO_TWILIGHT_PORTAL2 = 202796
};

#endif