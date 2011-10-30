/*
* Copyright (C) 2011 True Blood <http://www.trueblood-servers.com/>
* By Asardial
*/

/*
-- SQL
DELETE FROM creature_template WHERE entry = 47829;
-- Fel Flames Spell for Argaloth
INSERT INTO `creature_template` VALUES ('47829', '0', '0', '0', '0', '0', '1126', '11686', '0', '0', 'Fel Flames', '', '', '0', '1', '1', '0', '14', '14', '0', '0', '-1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '1', '33554432', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '16778240', '0', '0', '0', '0', '0', '0', '0', '0', '0', '88999', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '2', '1', '1', '0', '0', '0', '0', '0', '0', '0', '94', '1', '0', '0', '128', '', '1');
*/

#include "ScriptMgr.h"


enum Spells
{
   SPELL_CONSUMING_DARKNESS_10N  = 88954,
   SPELL_CONSUMING_DARKNESS_25N  = 95173,
   SPELL_FEL_FIRESTORM           = 88972,
   SPELL_METEOR_SLASH_10N        = 95172,
   SPELL_METEOR_SLASH_25N        = 88942,
   SPELL_BERSERK                 = 47008,
};
 
enum Events
{
   EVENT_CONSUMING_DARKNESS = 1,
   EVENT_METEOR_SLASH       = 2,
   EVENT_BERSERK            = 3,
};

class boss_argaloth : public CreatureScript
{
    public:
        boss_argaloth() : CreatureScript("boss_argaloth") { }
 
        struct boss_argalothAI : public ScriptedAI
        {
            boss_argalothAI(Creature* pCreature) : ScriptedAI(pCreature){}
			
            EventMap events;
            uint32 fel_firestorm_casted;
            
			void Reset()
            {
                events.ScheduleEvent(EVENT_CONSUMING_DARKNESS, 10 *IN_MILLISECONDS);
                events.ScheduleEvent(EVENT_METEOR_SLASH, 14 *IN_MILLISECONDS);
                events.ScheduleEvent(EVENT_BERSERK, 300 *IN_MILLISECONDS);
                fel_firestorm_casted = 0;
            }
 
            void EnterCombat(Unit* /*who*/)
            {
                me->setActive(true);
                DoZoneInCombat();
            }
                        
            void JustDied(Unit* /*killer*/){}
                        
            void JustReachedHome()
            {
               Reset();
            }
 
            void KilledUnit(Unit* victim){}
 
            void MoveInLineOfSight(Unit* who){}
 
            void UpdateAI(uint32 const diff)
            {
                if (!UpdateVictim())
                    return;
                        if (((me->GetHealth()*100 / me->GetMaxHealth()) < 66 ) && (fel_firestorm_casted == 0))
                                {
                                        fel_firestorm_casted = 1;
                                        DoCast(SPELL_FEL_FIRESTORM);
                                }
                        if (((me->GetHealth()*100 / me->GetMaxHealth()) < 33 ) && (fel_firestorm_casted == 1))
                                {
                                        fel_firestorm_casted = 2;
                                        DoCast(SPELL_FEL_FIRESTORM);
                                }

                events.Update(diff);
 
                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_CONSUMING_DARKNESS:
                        DoCast(me->getVictim(), RAID_MODE(SPELL_CONSUMING_DARKNESS_10N,SPELL_CONSUMING_DARKNESS_25N));
                        events.RescheduleEvent(EVENT_CONSUMING_DARKNESS, 14 * IN_MILLISECONDS);
                        break;
                        case EVENT_METEOR_SLASH:
                        DoCast(me->getVictim(), RAID_MODE(SPELL_METEOR_SLASH_10N,SPELL_METEOR_SLASH_25N));
                        events.RescheduleEvent(EVENT_METEOR_SLASH, 14 * IN_MILLISECONDS);
                        break;
                        case EVENT_BERSERK:
                        DoCast(me, SPELL_BERSERK);
                        events.RescheduleEvent(EVENT_BERSERK, 300 * IN_MILLISECONDS);
                        break;
                    }
                }
                                
                DoMeleeAttackIfReady();
            }
            void MovementInform(uint32 type, uint32 id)
            {
            }
        };
        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_argalothAI(creature);
        }
};
void AddSC_boss_argaloth()
{
    new boss_argaloth();
}