-- Grimbatol
UPDATE creature_template set scriptname = 'boss_general_umbriss' where entry = 39625;
UPDATE creature_template set scriptname = 'npc_malignant' where entry = 39984;
UPDATE creature_template set scriptname = 'npc_trogg_dweller' where entry = 45467;

DELETE FROM `creature_text` WHERE `entry` IN (39625);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(39625,0,0, 'A million more await my orders. What chance you do have?',1,0,0,0,0,18530, 'umbriss - SAY_AGGRO'),
(39625,1,0, 'Cover the rear! Alexstraza\'s brood decimate our rank!',1,0,0,0,0,18537, 'umbriss - SAY_BOMBING_1'),
(39625,2,0, 'Reinforce the front! We are being invaded!',1,0,0,0,0,18536, 'umbriss - SAY_BOMBING_2'),
(39625,3,0, 'Attack you cowardly vermin!',1,0,0,0,0,18535, 'umbriss - SAY_SUMMON'),
(39625,4,0, 'Messy...',1,0,0,0,0,18532, 'umbriss - SAY_KILL_1'),
(39625,5,0, 'Vermin, your dinner awaits!',1,0,0,0,0,18531, 'umbriss - SAY_KILL_2'),
(39625,6,0, 'General Umbriss sets his eyes on $N and begins to cast blitz.',3,0,0,0,0,18533, 'umbriss - EMOTE_BLITZ'),
(39625,7,0, 'General Umbriss begins to cast ground siege.',3,0,0,0,0,18534, 'umbriss - EMOTE_GROUND_SIEGE'),
(39625,8,0, 'General Umbriss goes into a frenzy !',3,0,0,0,0,0, 'umbriss - EMOTE_FRENZY');

update instance_template set script = 'instance_grimbatol' where map = 670;

-- Tol'Vir
-- General Husam
UPDATE `creature_template` SET `ScriptName`='boss_general_husam' WHERE `entry`=44577; 
UPDATE `creature_template` SET `ScriptName`='npc_trap' WHERE `entry`=44840; 
REPLACE INTO `spelldifficulty_dbc` (`id`, `spellid0`, `spellid1`) VALUES (4004, 83454, 90029); -- SPELL_SHOCKWAVE_DMG
REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES (83445, 83454, 'Husam Shockwave DMG');
-- High Prophet Barim
UPDATE `creature_template` SET `ScriptName`='boss_high_prophet_barim' WHERE `entry`=43612; 
UPDATE `creature_template` SET `ScriptName`='npc_harbinger_of_darkness' WHERE `entry`=43927; 
UPDATE `creature_template` SET `ScriptName`='npc_blaze_of_heavens' WHERE `entry`=48906; 
UPDATE `creature_template` SET `ScriptName`='npc_soul_fragment' WHERE `entry`=43934; 
REPLACE INTO `spelldifficulty_dbc` (`id`, `spellid0`, `spellid1`) VALUES (4005, 81942, 90040); -- SPELL_HEAVENS_FURY_DMG
REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (82320, 81947, 2, 'High Propher Barim SPELL_REPENTANCE');
-- Lockmaw & Augh
UPDATE creature_template SET ScriptName = "boss_lockmaw" WHERE entry = 43614;
UPDATE creature_template SET ScriptName = "npc_augh_scent" WHERE entry = 45379;
UPDATE creature_template SET ScriptName = "npc_augh_whirlwind" WHERE entry = 45378;
-- Texts
REPLACE INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(44577, -1755001, 'Invaders, you shall go no further!', 21886, 1, 0, 0, 'General Husam SAY_AGGRO'),
(44577, -1755002, 'Murkash!', 21887, 1, 0, 0, 'General Husam SAY_SHOCKWAVE'),
(44577, -1755003, 'Tread Lightly.', 21888, 1, 0, 0, 'General Husam SAY_DETONATE'),
(44577, -1755004, 'Siamat must not be freed! Turn back before it is too late!', 21885, 1, 0, 0, 'General Husam SAY_DEATH'),
(43612, -1755005, 'Begone infidels, you are not welcome here!', 19735, 1, 0, 0, 'High Prophet Barim SAY_AGGRO'),
(43612, -1755006, 'Kneel before me and repent!', 19737, 1, 0, 0, 'High Prophet Barim SAY_REPETANCE_1'),
(43612, -1755007, 'The heavens take you!', 19736, 1, 0, 0, 'High Prophet Barim SAY_REPETANCE_2'),
(43612, -1755008, 'Death is only the beginning!', 19733, 1, 0, 0, 'High Prophet Barim SAY_DEATH'),
(43612, -1755009, 'May peace find you now.', 19738, 1, 0, 0, 'High Prophet Barim SAY_KILL');

DELETE FROM `creature_text` WHERE `entry` IN (45378,45379);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(45379,0,0, 'Bwagauugh!!! Augh feed you to da croc!!!',0,0,0,0,0,0, 'Augh - SAY_SCENT'),
(45378,0,0, 'Gwaaaaaaaaaaaahhh!!!',0,0,0,0,0,0, 'Augh - SAY_WHIRLWIND');

-- Siamat

DELETE FROM `creature_text` WHERE `entry` = 44819;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`)
VALUES
('44819', '1', '0', 'Winds of the south, rise and come to your masters aid!', '1', '0', '0', '0', '0', '20227', 'VO_TV_Siamat_Engage01'),
('44819', '0', '0', 'I. AM. UNLEASHED!', '1', '0', '0', '0', '0', '20231', 'VO_TV_Siamat_Intro01'),
('44819', '2', '1', 'Suffer the storm!', '1', '0', '0', '0', '0', '20229', 'VO_TV_Siamat_Event02'),
('44819', '3', '0', 'Nothing more than dust in the wind.', '1', '0', '0', '0', '0', '20232', 'VO_TV_Siamat_Kill01'),
('44819', '4', '0', 'The sky... Beckons...', '1', '0', '0', '0', '0', '20226', 'VO_TV_Siamat_Death01'),
('44819', '2', '0', 'Cower before the tempest storm!', '1', '0', '0', '0', '0', '20228', 'VO_TV_Siamat_Event01'),
('44819', '2', '2', 'Your city will be buried! Your lives forfeit to the elements! ', '1', '0', '0', '0', '0', '20230', 'VO_TV_Siamat_Event03');
  

UPDATE `creature` SET `spawnMask` = 3 WHERE `map` = 755;
UPDATE `gameobject` SET `spawnMask` = 3 WHERE `map` = 755;
DELETE FROM `creature` WHERE `id` IN (44796, 44711, 44712);
UPDATE `creature_template` SET `dmg_multiplier` = 1, `flags_extra` = 2, AIName = '' WHERE `entry` IN (45379,45378);
DELETE FROM `creature_template_addon` WHERE `entry`=45378;
UPDATE `creature_template` SET `dmg_multiplier` = 13 WHERE `entry` = 43614;
UPDATE `creature_template` SET `dmg_multiplier` = 27 WHERE `entry` = 4361400;
UPDATE `creature_template` SET `dmg_multiplier` = 4 WHERE `entry` = 43658;
UPDATE `creature_template` SET `dmg_multiplier` = 7.5 WHERE `entry` = 4365800;
UPDATE `creature_template` SET `dmg_multiplier` = 27, `AIName` = 'SmartAI' WHERE `entry` = 49045;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=43658 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(43658, 0, 0, 0, 0, 0, 100, 0, 4000, 6000, 5000, 7500, 11, 81677, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, ' ');
DELETE FROM `smart_scripts` WHERE (`entryorguid`=49045 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(49045, 0, 0, 0, 0, 0, 100, 1, 100, 100, 0, 0, 11, 91415, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Augh - Frenzy'),
(49045, 0, 1, 0, 0, 0, 100, 0, 8000, 10000, 20000, 20000, 11, 91408, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Augh - Whirlwind'),
(49045, 0, 2, 0, 0, 0, 100, 0, 20000, 20000, 30000, 30000, 11, 90026, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Augh - Dragon\'s Breath'),
(49045, 0, 3, 0, 0, 0, 100, 0, 19000, 19000, 25000, 30000, 11, 90026, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Augh - Paralytic Blow Dart');

DELETE FROM creature WHERE id IN (43655,48906,43927,43934,43926,43801,43658,49045,45379,45378);
DELETE FROM gameobject WHERE id IN (2561) and map = 755;
UPDATE `creature_template` SET `unit_flags` = 6, `flags_extra` = 130 WHERE `entry` = 43650;
DELETE FROM `creature_template_addon` WHERE (`entry`=43650);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (43650, 0, 0, 0, 1, 0, '81646 0 ');
UPDATE `creature_template` SET `unit_flags` = 6, `flags_extra` = 130 WHERE `entry` = 43655;
DELETE FROM `creature_template_addon` WHERE (`entry`=43655);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (43655, 0, 0, 0, 1, 0, '81646 0 ');
UPDATE `creature_template` SET `lootid` = 0 WHERE `entry` = 4361400;

-- Throne of the Tides
UPDATE `instance_template` SET `script`='instance_throne_of_the_tides' WHERE `map`=643 LIMIT 1;
-- Lady Naz'jar
UPDATE `creature_template` SET `ScriptName`='boss_lady_nazjar' WHERE `entry`=40586;
-- Commander Ulthok
UPDATE `creature_template` SET `ScriptName`='boss_commander_ulthok' WHERE `entry`=40765;
-- Erunak Stonespeaker & Mindbender Ghur'sha
UPDATE `creature_template` SET `ScriptName`='boss_erunak_stonespeaker' WHERE `entry`=40825;
UPDATE `creature_template` SET `ScriptName`='boss_mindbender_ghursha' WHERE `entry`=40788;
-- Ozumat & Neptulon
DELETE FROM creature WHERE id = 42172;
UPDATE `creature_template` SET `ScriptName`='npc_neptulon' WHERE `entry`=40792;
UPDATE `creature_template` SET `ScriptName`='boss_ozumat' WHERE `entry`=42172;
-- Texts
REPLACE INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(40586, -1643001, 'You have interfered with our plans for the last time, mortals!', 0, 1, 0, 0, 'Lady Naz\'jar SAY_AGGRO'),
(40586, -1643002, 'Take arms, minions! Rise from the icy depths!', 0, 1, 0, 0, 'Lady Naz\'jar SAY_66_PRECENT'),
(40586, -1643003, 'Destroy these intruders! Leave them for the great dark beyond!', 0, 1, 0, 0, 'Lady Naz\'jar SAY_REPETANCE_33_PRECENT'),
(40586, -1643004, 'Ulthok... stop them...', 0, 1, 0, 0, 'Lady Naz\'jar SAY_DEATH'),
(40586, -1643005, 'Depths take you!', 0, 1, 0, 0, 'Lady Naz\'jar SAY_KILL_1'),
(40586, -1643006, 'The abyss awaits!', 0, 1, 0, 0, 'Lady Naz\'jar SAY_KILL_2'),
(40765, -1643007, 'Iilth vwah, uhn\'agth fhssh za.', 18543, 1, 0, 0, 'Commander Ulthok SAY_AGGRO'),
(40765, -1643008, 'Where one falls, many shall take its place...', 0, 5, 0, 0, 'Commander Ulthok SAY_AGGRO_WHISP'),
(40765, -1643009, 'Ywaq maq oou.', 18542, 1, 0, 0, 'Commander Ulthok SAY_DEATH'),
(40765, -1643010, 'They do not die.', 0, 5, 0, 0, 'Commander Ulthok SAY_DEATH_WHISP'),
(40788, -1643011, 'A new host must be found.', 0, 1, 0, 0, 'Mindbender Ghur\'sha SAY_PHASE_1_END_MINDBENDER'),
(40825, -1643012, 'Where one falls, many shall take its place...', 0, 1, 0, 0, 'Erunak Stonespeaker SAY_PHASE_1_END_ERUNAK'),
(40788, -1643013, 'There is only Ghur\'sha.', 0, 1, 0, 0, 'Mindbender Ghur\'sha SAY_MIND_CONTROL_1'),
(40788, -1643014, 'Who are your allies?', 0, 1, 0, 0, 'Mindbender Ghur\'sha SAY_MIND_CONTROL_2'),
(40788, -1643015, 'Give in.', 0, 1, 0, 0, 'Mindbender Ghur\'sha SAY_MIND_CONTROL_3'),
(40765, -1643016, 'Is. This. Reality.', 0, 1, 0, 0, 'Mindbender Ghur\'sha SAY_MIND_FOG'),
(40765, -1643017, 'They are outside the cycle...', 0, 1, 0, 0, 'Mindbender Ghur\'sha SAY_DEATH'),
(40765, -1643018, 'I am... weary. You must carry on without me. I shall take my leave once my strength has returned.', 0, 1, 0, 0, 'Erunak Stonespeaker SAY_WIN_ERUNAK');

-- Blackwing Descent
UPDATE creature_template SET scriptname = 'boss_magmaw' WHERE entry = 41570;
UPDATE creature_template SET scriptname = 'boss_atramedes' WHERE entry = 41442;
UPDATE creature_template SET scriptname = 'atramedes_gong' WHERE entry = 42960;