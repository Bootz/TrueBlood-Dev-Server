/*
* Copyright (C) 2011 True Blood <http://www.trueblood-servers.com/>
* By Asardial
*/

#include "ScriptPCH.h"
#include "ScriptedCreature.h"
#include "SpellScript.h"
#include "SpellAuraEffects.h"
#include "Vehicle.h"

enum Spells
{
	// Parasite de lave
	SPELL_INFECTION = 78941, // Infection parasitique - 10s
	// Magmaw
	SPELL_MAGMA_SPIT = 78068, // Crachat de magma
	SPELL_PILLAR_FLAME = 77971, // Pilier de flammes
	SPELL_LAVA_SPEW = 77690, // Crachement de magma
	SPELL_MASSIV_CRASH = 91921, // Impact massif
	SPELL_MUTILATION = 78412,
	SPELL_SWELTERING_ARMOR = 78199, // Armure étouffante
};

enum Creatures
{
	DATA_HEAD_MAGMAW = 42347,
	DATA_MAGMAW	= 41570,
};

enum Summons
{
	NPC_VERS = 42321, // Parasite de lave
};

const float SummonPos[MAX_SUMMON_POS][2] =
{
    {-137.344864f, -437.528046f, 73.374397f, 6.282065f},
    {-74.835655f, -437.843536f, 73.378448f, 3.061933f},
    {-105.996353f, -408.253510f, 76.613503f, 4.652360f},
};

enum Events
{
	EVENT_SUMMON,
	EVENT_VEHICULE,
};

/***************
** Magmaegueule
****************/

/****************
** Head Of Magmaw
*****************/

/*******
** Vers
*******/
class mob_vers: public CreatureScript
{
    public:
        mob_vers() : CreatureScript("mob_vers") { }

        struct mob_versAI : public ScriptedAI
        {
			mob_versAI(Creature* creature) : ScriptedAI(creature) { }
        
        uint32 uiCheckDistanceTimer;

        void Reset()
        {
            uiCheckDistanceTimer = 2*IN_MILLISECONDS;
        }

        void EnterCombat(Unit* /*pWho*/) { }
        
        void JustDied(Unit* /*Killer*/) {}

        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim())
                return;
            
            if (me->IsWithinDistInMap(me->getVictim(), 2.0f))
            {
                if (uiCheckDistanceTimer <= uiDiff)
                {
                    me->CastSpell(me->getVictim(), 94679 , true);

                    uiCheckDistanceTimer = 86400*IN_MILLISECONDS;
                } else uiCheckDistanceTimer -= uiDiff;
            }

            DoMeleeAttackIfReady();
			}
		};

        CreatureAI* GetAI(Creature* creature) const
        {
            return new mob_versAI(creature);
        }
};

/***************************
** Spell Parasitic Infection
****************************/
class spell_parasitic_infection : public SpellScriptLoader
{
    public:
        spell_parasitic_infection() : SpellScriptLoader("spell_parasitic_infection") { }

        class spell_parasitic_infection_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_parasitic_infection_AuraScript);

            void OnRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                Unit * caster = GetCaster();
                for (int i = 0; i < 2; ++i)
                {
                    Unit* Summoned = caster->SummonCreature(42321, caster->GetPositionX(), caster->GetPositionY(), caster->GetPositionZ(), 0, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 240000);
                    /*if (Summoned)
                    {
                        Unit *pTarget = SelectUnit(SELECT_TARGET_RANDOM, 0);
                        if (pTarget)
                            Summoned->AddThreat(pTarget, 1.0f);
                    }*/
                }
            }

            void Register()
            {
                OnEffectRemove += AuraEffectRemoveFn(spell_parasitic_infection_AuraScript::OnRemove, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_parasitic_infection_AuraScript();
        }
};

void AddSC_boss_magmaw()
{
	new boss_magmaw();
	new mob_vers();
	new npc_head_magmaw();
    new spell_parasitic_infection();
};