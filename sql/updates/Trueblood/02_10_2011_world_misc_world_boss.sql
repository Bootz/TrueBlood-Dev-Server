-- WORLD BOSS
-- Mobus
SET @ENTRY:=50009;
UPDATE `creature_template` SET `mindmg` = 2000, `maxdmg` = 3000, `dmg_multiplier` = 15 WHERE `entry` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @ENTRY;
UPDATE `creature` SET `spawntimesecs` = 259200 WHERE `id` = @ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 12000, 18000, 15000, 25000, 11, 93494, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Mobus - Wake'),
(@ENTRY, 0, 1, 0, 0, 0, 100, 0, 8000, 18000, 15000, 30000, 11, 93492, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Mobus - Ram'),
(@ENTRY, 0, 2, 0, 0, 0, 100, 0, 8000, 18000, 15000, 30000, 11, 93490, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Mobus - Algae'),
(@ENTRY, 0, 3, 0, 2, 0, 100, 0, 30, 30, 0, 0, 11, 8599, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Mobus - Enrage');
-- Xariona
SET @ENTRY:=50061;
UPDATE `creature_template` SET `mindmg` = 2000, `maxdmg` = 3000, `dmg_multiplier` = 15 WHERE `entry` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @ENTRY;
UPDATE `creature` SET `spawntimesecs` = 259200 WHERE `id` = @ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 8000, 18000, 12000, 25000, 11, 93494, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Xariona - Twilight Breath'),
(@ENTRY, 0, 1, 0, 0, 0, 100, 0, 10000, 20000, 15000, 30000, 11, 93546, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Xariona - Twilight Fissure'),
(@ENTRY, 0, 2, 0, 0, 0, 100, 0, 15000, 30000, 60000, 60000, 11, 93553, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Xariona - Twilight Zone'),
(@ENTRY, 0, 3, 0, 0, 0, 100, 0, 20000, 30000, 20000, 35000, 11, 93556, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Xariona - Unleashed Magic');
-- Akma'hat
SET @ENTRY:=50063;
UPDATE `creature_template` SET `mindmg` = 2000, `maxdmg` = 3000, `dmg_multiplier` = 15 WHERE `entry` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @ENTRY;
UPDATE `creature` SET `spawntimesecs` = 259200 WHERE `id` = @ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 10000, 20000, 15000, 22000, 11, 93575, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Akma\'hat - Fury of the Sands'),
(@ENTRY, 0, 1, 0, 0, 0, 100, 0, 10000, 20000, 15000, 20000, 11, 93578, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Akma\'hat - Sands of Time'),
(@ENTRY, 0, 2, 0, 0, 0, 100, 0, 8000, 20000, 10000, 20000, 11, 94968, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Akma\'hat - Shockwave'),
(@ENTRY, 0, 3, 0, 0, 0, 100, 0, 10000, 25000, 50000, 60000, 11, 93561, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Akma\'hat - Stone Mantle');
-- Julak-Doom
REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (93611, 94633, 0, 'Black Breath summon');
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `flags_extra` = 130 WHERE `entry` = 51247;
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (51247, 0, 0, 0, 0, 0, '94635 0');
SET @ENTRY:=50063;
UPDATE `creature_template` SET `mindmg` = 2000, `maxdmg` = 3000, `dmg_multiplier` = 15 WHERE `entry` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @ENTRY;
UPDATE `creature` SET `spawntimesecs` = 259200 WHERE `id` = @ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 10000, 20000, 15000, 22000, 11, 93611, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Julak-Doom - Black Breath'),
(@ENTRY, 0, 1, 0, 0, 0, 100, 0, 15000, 25000, 25000, 35000, 11, 93621, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Julak-Doom - Dark Whispers'),
(@ENTRY, 0, 2, 0, 0, 0, 100, 0, 8000, 20000, 15000, 25000, 11, 93610, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Julak-Doom - Massive Shockwave');
-- RARE
-- Ghostcrawler
SET @ENTRY:=50051;
UPDATE `creature_template` SET `mindmg` = 2000, `maxdmg` = 3000, `dmg_multiplier` = 8.5 WHERE `entry` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @ENTRY;
UPDATE `creature` SET `spawntimesecs` = 43200 WHERE `id` = @ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 8000, 12000, 8000, 12000, 11, 93082, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Ghostcrawler - Nerfbat');
-- Madexx Red
SET @ENTRY:=51403;
UPDATE `creature_template` SET `mindmg` = 2000, `maxdmg` = 3000, `dmg_multiplier` = 8.5 WHERE `entry` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @ENTRY;
UPDATE `creature` SET `spawntimesecs` = 43200 WHERE `id` = @ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 5000, 12000, 6000, 10000, 11, 79840, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Madexx - Harden'),
(@ENTRY, 0, 1, 0, 0, 0, 100, 0, 10000, 15000, 10000, 12000, 11, 79443, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Madexx - Sand Step'),
(@ENTRY, 0, 2, 0, 0, 0, 100, 0, 8000, 12000, 8000, 12000, 11, 79607, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Madexx - Nerfbat');
-- Madexx Blue
SET @ENTRY:=51404;
UPDATE `creature_template` SET `mindmg` = 2000, `maxdmg` = 3000, `dmg_multiplier` = 8.5 WHERE `entry` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @ENTRY;
UPDATE `creature` SET `spawntimesecs` = 43200 WHERE `id` = @ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 5000, 12000, 6000, 10000, 11, 79840, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Madexx - Harden'),
(@ENTRY, 0, 1, 0, 0, 0, 100, 0, 10000, 15000, 10000, 12000, 11, 79443, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Madexx - Sand Step'),
(@ENTRY, 0, 2, 0, 0, 0, 100, 0, 8000, 12000, 8000, 12000, 11, 79607, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Madexx - Nerfbat');
-- Madexx WTF?!
SET @ENTRY:=51401;
UPDATE `creature_template` SET `mindmg` = 2000, `maxdmg` = 3000, `dmg_multiplier` = 8.5 WHERE `entry` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @ENTRY;
UPDATE `creature` SET `spawntimesecs` = 43200 WHERE `id` = @ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 5000, 12000, 6000, 10000, 11, 79840, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Madexx - Harden'),
(@ENTRY, 0, 1, 0, 0, 0, 100, 0, 10000, 15000, 10000, 12000, 11, 79443, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Madexx - Sand Step'),
(@ENTRY, 0, 2, 0, 0, 0, 100, 0, 8000, 12000, 8000, 12000, 11, 79607, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Madexx - Nerfbat');
-- Madexx Green
SET @ENTRY:=51402;
UPDATE `creature_template` SET `mindmg` = 2000, `maxdmg` = 3000, `dmg_multiplier` = 8.5 WHERE `entry` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @ENTRY;
UPDATE `creature` SET `spawntimesecs` = 43200 WHERE `id` = @ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 5000, 12000, 6000, 10000, 11, 79840, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Madexx - Harden'),
(@ENTRY, 0, 1, 0, 0, 0, 100, 0, 10000, 15000, 10000, 12000, 11, 79443, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Madexx - Sand Step'),
(@ENTRY, 0, 2, 0, 0, 0, 100, 0, 8000, 12000, 8000, 12000, 11, 79607, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Madexx - Nerfbat');
-- Madexx Brown
SET @ENTRY:=50154;
UPDATE `creature_template` SET `mindmg` = 2000, `maxdmg` = 3000, `dmg_multiplier` = 8.5 WHERE `entry` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @ENTRY;
UPDATE `creature` SET `spawntimesecs` = 43200 WHERE `id` = @ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 5000, 12000, 6000, 10000, 11, 79840, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Madexx - Harden'),
(@ENTRY, 0, 1, 0, 0, 0, 100, 0, 10000, 15000, 10000, 12000, 11, 79443, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Madexx - Sand Step'),
(@ENTRY, 0, 2, 0, 0, 0, 100, 0, 8000, 12000, 8000, 12000, 11, 79607, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Madexx - Nerfbat');
-- Sambas
SET @ENTRY:=50159;
UPDATE `creature_template` SET `mindmg` = 2000, `maxdmg` = 3000, `dmg_multiplier` = 8.5 WHERE `entry` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @ENTRY;
UPDATE `creature` SET `spawntimesecs` = 43200 WHERE `id` = @ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 500, 500, 6000, 6000, 11, 75002, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Sambas - Leaping Rush');
-- Karoma
SET @ENTRY:=50138;
UPDATE `creature_template` SET `mindmg` = 2000, `maxdmg` = 3000, `dmg_multiplier` = 8.5 WHERE `entry` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @ENTRY;
UPDATE `creature` SET `spawntimesecs` = 43200 WHERE `id` = @ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 500, 500, 6000, 6000, 11, 75002, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Karoma - Leaping Rush');
-- Tarvus the Vile
SET @ENTRY:=50086;
UPDATE `creature_template` SET `mindmg` = 2000, `maxdmg` = 3000, `dmg_multiplier` = 8.5 WHERE `entry` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @ENTRY;
UPDATE `creature` SET `spawntimesecs` = 43200 WHERE `id` = @ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 5000, 12000, 6000, 10000, 11, 95409, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Tarvus the Vile - Blast Wave'),
(@ENTRY, 0, 1, 0, 0, 0, 100, 0, 8000, 12000, 9000, 15000, 11, 95400, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Tarvus the Vile - Flame Breath'),
(@ENTRY, 0, 2, 0, 0, 0, 100, 0, 6000, 8000, 6000, 6000, 11, 84867, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Tarvus the Vile - Sundering Swipe');
-- Overlord Sunderfury
SET @ENTRY:=50085;
UPDATE `creature_template` SET `mindmg` = 2000, `maxdmg` = 3000, `dmg_multiplier` = 8.5 WHERE `entry` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @ENTRY;
UPDATE `creature` SET `spawntimesecs` = 43200 WHERE `id` = @ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 5000, 12000, 6000, 10000, 11, 93521, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Overlord Sunderfury - Burning Hatred'),
(@ENTRY, 0, 1, 0, 0, 0, 100, 0, 8000, 12000, 9000, 15000, 11, 77703, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Overlord Sunderfury - Magma Burst');
-- Armagedillo
SET @ENTRY:=50065;
UPDATE `creature_template` SET `mindmg` = 2000, `maxdmg` = 3000, `dmg_multiplier` = 8.5 WHERE `entry` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @ENTRY;
UPDATE `creature` SET `spawntimesecs` = 43200 WHERE `id` = @ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 500, 1000, 5000, 15000, 11, 93598, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Armagedillo - Spiked Charge'),
(@ENTRY, 0, 1, 0, 0, 0, 100, 0, 8000, 12000, 9000, 15000, 11, 93592, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Armagedillo - Dillogeddon'),
(@ENTRY, 0, 2, 0, 0, 0, 100, 0, 6000, 8000, 6000, 10000, 11, 93590, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Armagedillo - Flame Breath');
-- Cyrus the Black
SET @ENTRY:=50064;
UPDATE `creature_template` SET `mindmg` = 2000, `maxdmg` = 3000, `dmg_multiplier` = 8.5 WHERE `entry` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @ENTRY;
UPDATE `creature` SET `spawntimesecs` = 43200 WHERE `id` = @ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 500, 1000, 8000, 15000, 11, 93589, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cyrus the Black - Disease Breath'),
(@ENTRY, 0, 1, 0, 0, 0, 100, 0, 8000, 12000, 9000, 15000, 11, 93587, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Cyrus the Black - Ritual of Bloodletting'),
(@ENTRY, 0, 2, 0, 0, 0, 100, 0, 6000, 8000, 10000, 15000, 11, 93585, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Cyrus the Black - Flame Breath');
-- Golgarok
SET @ENTRY:=50059;
UPDATE `creature_template` SET `mindmg` = 2000, `maxdmg` = 3000, `dmg_multiplier` = 8.5 WHERE `entry` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @ENTRY;
UPDATE `creature` SET `spawntimesecs` = 43200 WHERE `id` = @ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 500, 1000, 5000, 15000, 11, 89882, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Golgarok - Earth Spike'),
(@ENTRY, 0, 1, 0, 0, 0, 100, 0, 8000, 12000, 9000, 15000, 11, 86861, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Golgarok - Earthquake'),
(@ENTRY, 0, 2, 0, 0, 0, 100, 0, 12000, 15000, 8000, 15000, 11, 83454, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Golgarok - Shockwave'),
(@ENTRY, 0, 3, 0, 0, 0, 100, 0, 5000, 10000, 6000, 10000, 11, 80182, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Golgarok - Uppercut');
-- Terborus
SET @ENTRY:=50060;
UPDATE `creature_template` SET `mindmg` = 2000, `maxdmg` = 3000, `dmg_multiplier` = 8.5 WHERE `entry` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @ENTRY;
UPDATE `creature` SET `spawntimesecs` = 43200 WHERE `id` = @ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 500, 1000, 30000, 40000, 11, 32738, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Terborus - Spiked Charge'),
(@ENTRY, 0, 1, 0, 0, 0, 100, 0, 5000, 12000, 9000, 15000, 11, 79927, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Terborus - Earth Shield');
-- Blazewing
SET @ENTRY:=50057;
UPDATE `creature_template` SET `mindmg` = 2000, `maxdmg` = 3000, `dmg_multiplier` = 8.5 WHERE `entry` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @ENTRY;
UPDATE `creature` SET `spawntimesecs` = 43200 WHERE `id` = @ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 500, 1000, 10000, 15000, 11, 93515, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Blazewing - Charge'),
(@ENTRY, 0, 1, 0, 0, 0, 100, 0, 4000, 7000, 4000, 6000, 11, 95360, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Blazewing - Flame Buffet'),
(@ENTRY, 0, 2, 0, 0, 0, 100, 0, 6000, 8000, 6000, 8000, 11, 93514, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Blazewing - Melt Armor');
-- Thartuk the Exile
SET @ENTRY:=50053;
UPDATE `creature_template` SET `mindmg` = 2000, `maxdmg` = 3000, `dmg_multiplier` = 8.5 WHERE `entry` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @ENTRY;
UPDATE `creature` SET `spawntimesecs` = 43200 WHERE `id` = @ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 3000, 7000, 8000, 10000, 11, 81173, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Thartuk the Exile - Frenzy'),
(@ENTRY, 0, 1, 0, 2, 0, 100, 0, 30, 30, 0, 0, 11, 8599, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Thartuk the Exile - Enrage');
-- Lady La-La
SET @ENTRY:=49913;
UPDATE `creature_template` SET `mindmg` = 2000, `maxdmg` = 3000, `dmg_multiplier` = 8.5 WHERE `entry` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @ENTRY;
UPDATE `creature` SET `spawntimesecs` = 43200 WHERE `id` = @ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 1000, 2000, 2500, 3000, 11, 92895, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Lady La-La - Briny Romance'),
(@ENTRY, 0, 1, 0, 0, 0, 100, 0, 6000, 12000, 10000, 15000, 11, 92888, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Lady La-La - Siren\'s Song');
-- Burgy Blackheart 
SET @ENTRY:=50052;
UPDATE `creature_template` SET `mindmg` = 2000, `maxdmg` = 3000, `dmg_multiplier` = 8.5 WHERE `entry` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @ENTRY;
UPDATE `creature` SET `spawntimesecs` = 43200 WHERE `id` = @ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 1500, 7500, 10000, 15000, 11, 79414, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Burgy Blackheart - Brittle Touch'),
(@ENTRY, 0, 1, 0, 0, 0, 100, 0, 1000, 2000, 2000, 4000, 11, 75380, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Burgy Blackheart - Parrrley!'),
(@ENTRY, 0, 2, 0, 0, 0, 100, 0, 2000, 3000, 2000, 6000, 11, 75361, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Burgy Blackheart - Swashbuckling Slice');