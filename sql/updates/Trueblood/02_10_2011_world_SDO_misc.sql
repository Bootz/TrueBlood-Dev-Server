-- Halls of Origination
UPDATE `instance_template` SET `script`='instance_halls_of_origination' WHERE `map`=644;

-- Temple Guardian Anhuur

DELETE FROM `creature_text` WHERE `entry` = 39425;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) 
VALUES 
('39425', '0', '0', 'Turn back, intruders! These halls must not be disturbed!', '1', '0', '0', '0', '0', '18580', 'VO_HO_Anhuur_Engage'), 
('39425', '4', '0', 'Temple Guardian Anhuur becomes protected by his defense beacons! Disable them by pulling the levers below!', '3', '0', '0', '0', '0', '0', 'VO_HO_Anhuur_Special'),
('39425', '3', '0', 'What... have you... done? ', '1', '0', '0', '0', '0', '18579', 'VO_HO_Anhuur_Death'),
('39425', '2', '0', 'A product of your own insolence!', '1', '0', '0', '0', '0', '18583', 'VO_HO_Anhuur_Slay02'),
('39425', '1', '0', 'Beacons of light, bestow upon me your aegis!', '1', '0', '0', '0', '0', '18581', 'VO_HO_Anhuur_Event'),
('39425', '2', '1', 'I regret nothing !', '1', '0', '0', '0', '0', '18582', 'VO_HO_Anhuur_Slay01');

UPDATE `gameobject_template` SET `ScriptName` = 'go_beacon_of_light' WHERE `entry` = 203133;
UPDATE `gameobject_template` SET `ScriptName` = 'go_beacon_of_light' WHERE `entry` = 203136;
UPDATE `gameobject_template` SET `flags` = 4 WHERE `entry` = 206506;
UPDATE `creature_template` SET `modelid1` = 1126, `modelid2` = 11686, `flags_extra` = 130 WHERE `entry` = 40183;
UPDATE `creature_template` SET `ScriptName` = 'boss_temple_guardian_anhuur' WHERE `creature_template`.`entry` =39425;
DELETE FROM `creature_template_addon` WHERE (`entry`=40283);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (40283, 0, 0, 0, 1, 0, '75116 0');

-- Earthrager Ptah
DELETE FROM `creature_text` WHERE `entry` = 39428;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) 
VALUES 
('39428', '0', '0', 'More carrion for the swarm... ', '1', '0', '0', '0', '0', '18906', 'VO_HO_Ptah_Engage'), 
('39428', '1', '0', 'Ptah... is... no more... ', '1', '0', '0', '0', '0', '18905', 'VO_HO_Ptah_Death'),
('39428', '2', '0', 'Dust to dust... ', '1', '0', '0', '0', '0', '18907', 'VO_HO_Ptah_Slay01'),
('39428', '2', '1', 'HYAAAH!!', '1', '0', '0', '0', '0', '18908', 'VO_HO_Ptah_Slay02');

-- Anraphet
UPDATE `creature_template` SET ScriptName='boss_anraphet' WHERE `entry`=39788;
DELETE FROM `creature_text` WHERE `entry` = 39788;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) 
VALUES 
('39788', '0', '0', 'This unit has been activated outside normal operating protocols. Downloading new operational parameters. Download complete. Full unit self defense routines are now active. Destruction of foreign units in this system shall now commence.', '1', '0', '0', '0', '0', '20857', 'VO_HO_Anraphet_Intro01'), 
('39788', '1', '0', 'Purge of unauthorized entities commencing.', '1', '0', '0', '0', '0', '20862', 'VO_HO_Anraphet_Engage01'),
('39788', '2', '1', 'Purge Complete. ', '1', '0', '0', '0', '0', '20859', 'VO_HO_Anraphet_Slay02'),
('39788', '2', '0', 'Target Annihilated.', '1', '0', '0', '0', '0', '20858', 'VO_HO_Anraphet_Slay01'),
('39788', '3', '0', 'Omega Stance activated. Annihilation of foreign unit is now imminent.', '1', '0', '0', '0', '0', '20861', 'VO_HO_Anraphet_Special02'),
('39788', '4', '0', 'Anraphet unit shutting down...', '1', '0', '0', '0', '0', '20856', 'VO_HO_Anraphet_Death01');

-- Isiset
DELETE FROM `creature_text` WHERE `entry` = 39587;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) 
VALUES 
('39587', '0', '0', 'Gaze to the heavens! What do you see?', '1', '0', '0', '0', '0', '18843', 'VO_HO_Isiset_Engage'), 
('39587', '1', '0', 'Bask in my radiance!', '1', '0', '0', '0', '0', '18845', 'VO_HO_Isiset_Event01'),
('39587', '2', '0', 'Insignificant!', '1', '0', '0', '0', '0', '18847', 'VO_HO_Isiset_Slay02'),
('39587', '2', '1', 'The glimmer of your life, extinguished.', '1', '0', '0', '0', '0', '18846', 'VO_HO_Isiset_Slay01'),
('39587', '3', '0', 'Eons of darkness... by your hand.', '1', '0', '0', '0', '0', '18842', 'VO_HO_Isiset_Death01'),
('39587', '3', '1', 'My luster... wanes.', '1', '0', '0', '0', '0', '18844', 'VO_HO_Isiset_Death02');

UPDATE `creature_template` SET ScriptName='boss_isiset' WHERE `entry`=39587;
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (74136, 'spell_isiset_supernova');
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 39720;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 39721;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 39722;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=39720 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(39720, 0, 39720, 0, 4, 0, 100, 0, 0, 0, 0, 0, 11, 74134, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Astral Rain');
DELETE FROM `smart_scripts` WHERE (`entryorguid`=39721 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(39721, 0, 0, 0, 0, 0, 100, 0, 3000, 5000, 5000, 7000, 11, 74374, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, ' ');
DELETE FROM `smart_scripts` WHERE (`entryorguid`=39722 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(39722, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 11, 74133, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Veil of Sky');

-- Ammunae
DELETE FROM `creature_text` WHERE `entry` = 39731;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) 
VALUES 
('39731', '0', '0', 'This chamber will flourish with your life energy!', '1', '0', '0', '0', '0', '18571', 'VO_HO_Ammunae_Engage'), 
('39731', '1', '0', 'Your life, UNLEASHED!', '1', '0', '0', '0', '0', '18572', 'VO_HO_Ammunae_Event'),
('39731', '2', '0', 'Wither away!', '1', '0', '0', '0', '0', '18573', 'VO_HO_Ammunae_Slay01'),
('39731', '2', '1', 'Waste of energy.', '1', '0', '0', '0', '0', '18574', 'VO_HO_Ammunae_Slay02'),
('39731', '3', '0', 'The cycle continues...', '1', '0', '0', '0', '0', '18569', 'VO_HO_Ammunae_Death');

-- Setesh
DELETE FROM `creature_text` WHERE `entry` = 39732;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) 
VALUES 
('39732', '0', '0', 'You fear that which you cannot control. But can you control your fear? ', '1', '0', '0', '0', '0', '18553', 'VO_HO_Setesh_Engage'),
('39732', '1', '0', 'Behold, how infinity befalls your world', '1', '0', '0', '0', '0', '18554', 'VO_HO_Setesh_Event'), 
('39732', '2', '0', 'Do you understand now?', '1', '0', '0', '0', '0', '18556', 'VO_HO_Setesh_Slay02'),
('39732', '2', '1', 'Embrace the end.', '1', '0', '0', '0', '0', '18555', 'VO_HO_Setesh_Slay01'),
('39732', '3', '0', 'Yes! Harness... your... hatred.', '1', '0', '0', '0', '0', '18552', 'VO_HO_Setesh_Death');

-- Rajh
DELETE FROM `creature_text` WHERE `entry` = 39378;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) 
VALUES 
('39378', '0', '0', 'Defilers! Wretches! Fiends! Begone from here!', '1', '0', '0', '0', '0', '18911', 'VO_HO_Rajh_Engage'), 
('39378', '1', '0', 'Can you feel it? The blessed warmth of the sun?', '1', '0', '0', '0', '0', '18912', 'VO_HO_Rajh_Event01'),
('39378', '2', '0', 'I send you to your deity.', '1', '0', '0', '0', '0', '18913', 'VO_HO_Rajh_Slay01'),
('39378', '2', '1', 'I will take this life as an offering!', '1', '0', '0', '0', '0', '18914', 'VO_HO_Rajh_Slay01'),
('39378', '3', '0', 'Blazing rays of light, take me!', '1', '0', '0', '0', '0', '18910', 'VO_HO_Rajh_Death');