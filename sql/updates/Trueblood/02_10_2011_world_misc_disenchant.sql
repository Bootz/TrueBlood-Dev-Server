-- DisenchantID Armor
UPDATE `item_template` SET `DisenchantID` = 1, RequiredDisenchantSkill = 1 WHERE `class` = 4 AND `Quality` = 2 AND `ItemLevel` > 4 AND `ItemLevel` < 16 AND RequiredDisenchantSkill IN (-1,0); #Armor 5-15
UPDATE `item_template` SET `DisenchantID` = 2, RequiredDisenchantSkill = 1 WHERE `class` = 4 AND `Quality` = 2 AND `ItemLevel` > 15 AND `ItemLevel` < 21 AND RequiredDisenchantSkill IN (-1,0); #Armor 16-20
UPDATE `item_template` SET `DisenchantID` = 3, RequiredDisenchantSkill = 25 WHERE `class` = 4 AND `Quality` = 2 AND `ItemLevel` > 20 AND `ItemLevel` < 26 AND RequiredDisenchantSkill IN (-1,0); #Armor 21-25
UPDATE `item_template` SET `DisenchantID` = 4, RequiredDisenchantSkill = 50 WHERE `class` = 4 AND `Quality` = 2 AND `ItemLevel` > 25 AND `ItemLevel` < 31 AND RequiredDisenchantSkill IN (-1,0); #Armor 26-30
UPDATE `item_template` SET `DisenchantID` = 5, RequiredDisenchantSkill = 75 WHERE `class` = 4 AND `Quality` = 2 AND `ItemLevel` > 30 AND `ItemLevel` < 36 AND RequiredDisenchantSkill IN (-1,0); #Armor 31-35
UPDATE `item_template` SET `DisenchantID` = 6, RequiredDisenchantSkill = 100 WHERE `class` = 4 AND `Quality` = 2 AND `ItemLevel` > 35 AND `ItemLevel` < 41 AND RequiredDisenchantSkill IN (-1,0); #Armor 36-40
UPDATE `item_template` SET `DisenchantID` = 7, RequiredDisenchantSkill = 125 WHERE `class` = 4 AND `Quality` = 2 AND `ItemLevel` > 40 AND `ItemLevel` < 46 AND RequiredDisenchantSkill IN (-1,0); #Armor 41-45
UPDATE `item_template` SET `DisenchantID` = 8, RequiredDisenchantSkill = 150 WHERE `class` = 4 AND `Quality` = 2 AND `ItemLevel` > 45 AND `ItemLevel` < 51 AND RequiredDisenchantSkill IN (-1,0); #Armor 46-50
UPDATE `item_template` SET `DisenchantID` = 9, RequiredDisenchantSkill = 175 WHERE `class` = 4 AND `Quality` = 2 AND `ItemLevel` > 50 AND `ItemLevel` < 56 AND RequiredDisenchantSkill IN (-1,0); #Armor 51-55
UPDATE `item_template` SET `DisenchantID` = 10, RequiredDisenchantSkill = 200 WHERE `class` = 4 AND `Quality` = 2 AND `ItemLevel` > 55 AND `ItemLevel` < 61 AND RequiredDisenchantSkill IN (-1,0); #Armor 56-60
UPDATE `item_template` SET `DisenchantID` = 11, RequiredDisenchantSkill = 225 WHERE `class` = 4 AND `Quality` = 2 AND `ItemLevel` > 60 AND `ItemLevel` < 66 AND RequiredDisenchantSkill IN (-1,0); #Armor 61-65
UPDATE `item_template` SET `DisenchantID` = 12, RequiredDisenchantSkill = 225 WHERE `class` = 4 AND `Quality` = 2 AND `ItemLevel` = 79 AND RequiredDisenchantSkill IN (-1,0); #Armor 79
UPDATE `item_template` SET `DisenchantID` = 13, RequiredDisenchantSkill = 225 WHERE `class` = 4 AND `Quality` = 2 AND `ItemLevel` > 79 AND `ItemLevel` < 100 AND RequiredDisenchantSkill IN (-1,0); #Armor 80-99
UPDATE `item_template` SET `DisenchantID` = 14, RequiredDisenchantSkill = 275 WHERE `class` = 4 AND `Quality` = 2 AND `ItemLevel` > 99 AND `ItemLevel` < 121 AND RequiredDisenchantSkill IN (-1,0); #Armor 100-120
UPDATE `item_template` SET `DisenchantID` = 15, RequiredDisenchantSkill = 325 WHERE `class` = 4 AND `Quality` = 2 AND `ItemLevel` > 129 AND `ItemLevel` < 152 AND RequiredDisenchantSkill IN (-1,0); #Armor 130-151
UPDATE `item_template` SET `DisenchantID` = 16, RequiredDisenchantSkill = 350 WHERE `class` = 4 AND `Quality` = 2 AND `ItemLevel` > 151 AND `ItemLevel` < 201 AND RequiredDisenchantSkill IN (-1,0); #Armor 152-200
UPDATE `item_template` SET `DisenchantID` = 59, RequiredDisenchantSkill = 400 WHERE `class` = 4 AND `Quality` = 2 AND `ItemLevel` > 271 AND `ItemLevel` < 333 AND RequiredDisenchantSkill IN (-1,0); #Armor 272-333
-- DisenchantID Weapons
UPDATE `item_template` SET `DisenchantID` = 17, RequiredDisenchantSkill = 1 WHERE `class` = 2 AND `Quality` = 2 AND `ItemLevel` > 4 AND `ItemLevel` < 16 AND RequiredDisenchantSkill IN (-1,0); #Weapon 5-15
UPDATE `item_template` SET `DisenchantID` = 18, RequiredDisenchantSkill = 1 WHERE `class` = 2 AND `Quality` = 2 AND `ItemLevel` > 15 AND `ItemLevel` < 21 AND RequiredDisenchantSkill IN (-1,0); #Weapon 16-20
UPDATE `item_template` SET `DisenchantID` = 19, RequiredDisenchantSkill = 25 WHERE `class` = 2 AND `Quality` = 2 AND `ItemLevel` > 20 AND `ItemLevel` < 26 AND RequiredDisenchantSkill IN (-1,0); #Weapon 21-25
UPDATE `item_template` SET `DisenchantID` = 20, RequiredDisenchantSkill = 50 WHERE `class` = 2 AND `Quality` = 2 AND `ItemLevel` > 25 AND `ItemLevel` < 31 AND RequiredDisenchantSkill IN (-1,0); #Weapon 26-30
UPDATE `item_template` SET `DisenchantID` = 21, RequiredDisenchantSkill = 75 WHERE `class` = 2 AND `Quality` = 2 AND `ItemLevel` > 30 AND `ItemLevel` < 36 AND RequiredDisenchantSkill IN (-1,0); #Weapon 31-35
UPDATE `item_template` SET `DisenchantID` = 22, RequiredDisenchantSkill = 100 WHERE `class` = 2 AND `Quality` = 2 AND `ItemLevel` > 35 AND `ItemLevel` < 41 AND RequiredDisenchantSkill IN (-1,0); #Weapon 36-40
UPDATE `item_template` SET `DisenchantID` = 23, RequiredDisenchantSkill = 125 WHERE `class` = 2 AND `Quality` = 2 AND `ItemLevel` > 40 AND `ItemLevel` < 46 AND RequiredDisenchantSkill IN (-1,0); #Weapon 41-45
UPDATE `item_template` SET `DisenchantID` = 24, RequiredDisenchantSkill = 150 WHERE `class` = 2 AND `Quality` = 2 AND `ItemLevel` > 45 AND `ItemLevel` < 51 AND RequiredDisenchantSkill IN (-1,0); #Weapon 46-50
UPDATE `item_template` SET `DisenchantID` = 25, RequiredDisenchantSkill = 175 WHERE `class` = 2 AND `Quality` = 2 AND `ItemLevel` > 50 AND `ItemLevel` < 56 AND RequiredDisenchantSkill IN (-1,0); #Weapon 51-55
UPDATE `item_template` SET `DisenchantID` = 26, RequiredDisenchantSkill = 200 WHERE `class` = 2 AND `Quality` = 2 AND `ItemLevel` > 55 AND `ItemLevel` < 61 AND RequiredDisenchantSkill IN (-1,0); #Weapon 56-60
UPDATE `item_template` SET `DisenchantID` = 27, RequiredDisenchantSkill = 225 WHERE `class` = 2 AND `Quality` = 2 AND `ItemLevel` > 60 AND `ItemLevel` < 66 AND RequiredDisenchantSkill IN (-1,0); #Weapon 61-65
UPDATE `item_template` SET `DisenchantID` = 28, RequiredDisenchantSkill = 225 WHERE `class` = 2 AND `Quality` = 2 AND `ItemLevel` > 79 AND `ItemLevel` < 100 AND RequiredDisenchantSkill IN (-1,0); #Weapon 80-99
UPDATE `item_template` SET `DisenchantID` = 29, RequiredDisenchantSkill = 275 WHERE `class` = 2 AND `Quality` = 2 AND `ItemLevel` > 99 AND `ItemLevel` < 121 AND RequiredDisenchantSkill IN (-1,0); #Weapon 100-120
UPDATE `item_template` SET `DisenchantID` = 30, RequiredDisenchantSkill = 325 WHERE `class` = 2 AND `Quality` = 2 AND `ItemLevel` > 129 AND `ItemLevel` < 152 AND RequiredDisenchantSkill IN (-1,0); #Weapon 130-151
UPDATE `item_template` SET `DisenchantID` = 31, RequiredDisenchantSkill = 350 WHERE `class` = 2 AND `Quality` = 2 AND `ItemLevel` > 151 AND `ItemLevel` < 201 AND RequiredDisenchantSkill IN (-1,0); #Weapon 152-200 
UPDATE `item_template` SET `DisenchantID` = 58, RequiredDisenchantSkill = 400 WHERE `class` = 2 AND `Quality` = 2 AND `ItemLevel` > 271 AND RequiredDisenchantSkill IN (-1,0); #Weapon 306+
-- DisenchantID Rare
UPDATE `item_template` SET `DisenchantID` = 32, RequiredDisenchantSkill = 1 WHERE `Quality` = 3 AND `ItemLevel` > 0 AND `ItemLevel` < 26 AND RequiredDisenchantSkill IN (-1,0); #1-25
UPDATE `item_template` SET `DisenchantID` = 33, RequiredDisenchantSkill = 50 WHERE `Quality` = 3 AND `ItemLevel` > 25 AND `ItemLevel` < 31 AND RequiredDisenchantSkill IN (-1,0); #26-30
UPDATE `item_template` SET `DisenchantID` = 34, RequiredDisenchantSkill = 75 WHERE `Quality` = 3 AND `ItemLevel` > 30 AND `ItemLevel` < 36 AND RequiredDisenchantSkill IN (-1,0); #31-35
UPDATE `item_template` SET `DisenchantID` = 35, RequiredDisenchantSkill = 100 WHERE `Quality` = 3 AND `ItemLevel` > 35 AND `ItemLevel` < 41 AND RequiredDisenchantSkill IN (-1,0); #36-40
UPDATE `item_template` SET `DisenchantID` = 36, RequiredDisenchantSkill = 125 WHERE `Quality` = 3 AND `ItemLevel` > 40 AND `ItemLevel` < 46 AND RequiredDisenchantSkill IN (-1,0); #41-45
UPDATE `item_template` SET `DisenchantID` = 37, RequiredDisenchantSkill = 150 WHERE `Quality` = 3 AND `ItemLevel` > 45 AND `ItemLevel` < 51 AND RequiredDisenchantSkill IN (-1,0); #46-50
UPDATE `item_template` SET `DisenchantID` = 38, RequiredDisenchantSkill = 175 WHERE `Quality` = 3 AND `ItemLevel` > 50 AND `ItemLevel` < 56 AND RequiredDisenchantSkill IN (-1,0); #51-55
UPDATE `item_template` SET `DisenchantID` = 39, RequiredDisenchantSkill = 200 WHERE `Quality` = 3 AND `ItemLevel` > 55 AND `ItemLevel` < 66 AND RequiredDisenchantSkill IN (-1,0); #56-65
UPDATE `item_template` SET `DisenchantID` = 40, RequiredDisenchantSkill = 225 WHERE `Quality` = 3 AND `ItemLevel` > 65 AND `ItemLevel` < 100 AND RequiredDisenchantSkill IN (-1,0); #66-99
UPDATE `item_template` SET `DisenchantID` = 41, RequiredDisenchantSkill = 275 WHERE `Quality` = 3 AND `ItemLevel` > 99 AND `ItemLevel` < 116 AND RequiredDisenchantSkill IN (-1,0); #100-115
UPDATE `item_template` SET `DisenchantID` = 42, RequiredDisenchantSkill = 300 WHERE `Quality` = 3 AND `ItemLevel` > 129 AND `ItemLevel` < 168 AND RequiredDisenchantSkill IN (-1,0); #130-166
UPDATE `item_template` SET `DisenchantID` = 43, RequiredDisenchantSkill = 325 WHERE `Quality` = 3 AND `ItemLevel` > 166 AND `ItemLevel` < 201 AND RequiredDisenchantSkill IN (-1,0); #167-200
UPDATE `item_template` SET `DisenchantID` = 60, RequiredDisenchantSkill = 425 WHERE `Quality` = 3 AND `ItemLevel` > 278 AND `ItemLevel` < 317 AND RequiredDisenchantSkill IN (-1,0); #279-316
UPDATE `item_template` SET `DisenchantID` = 61, RequiredDisenchantSkill = 475 WHERE `Quality` = 3 AND `ItemLevel` > 317 AND `ItemLevel` < 353 AND RequiredDisenchantSkill IN (-1,0); #318-352
-- DisenchantID Epic
UPDATE `item_template` SET `DisenchantID` = 55, RequiredDisenchantSkill = 1 WHERE `Quality` = 4 AND `ItemLevel` > 0 AND `ItemLevel` < 40 AND RequiredDisenchantSkill IN (-1,0); #1-39
UPDATE `item_template` SET `DisenchantID` = 44, RequiredDisenchantSkill = 25 WHERE `Quality` = 4 AND `ItemLevel` > 39 AND `ItemLevel` < 46 AND RequiredDisenchantSkill IN (-1,0); #40-45
UPDATE `item_template` SET `DisenchantID` = 45, RequiredDisenchantSkill = 50 WHERE `Quality` = 4 AND `ItemLevel` > 45 AND `ItemLevel` < 51 AND RequiredDisenchantSkill IN (-1,0); #46-50
UPDATE `item_template` SET `DisenchantID` = 46, RequiredDisenchantSkill = 75 WHERE `Quality` = 4 AND `ItemLevel` > 50 AND `ItemLevel` < 56 AND RequiredDisenchantSkill IN (-1,0); #51-55
UPDATE `item_template` SET `DisenchantID` = 47, RequiredDisenchantSkill = 100 WHERE `Quality` = 4 AND `ItemLevel` > 55 AND `ItemLevel` < 61 AND RequiredDisenchantSkill IN (-1,0); #56-60
UPDATE `item_template` SET `DisenchantID` = 48, RequiredDisenchantSkill = 150 WHERE `class` = 4 AND `Quality` = 4 AND `ItemLevel` > 60 AND `ItemLevel` < 81 AND RequiredDisenchantSkill IN (-1,0); #61-80 armor
UPDATE `item_template` SET `DisenchantID` = 48, RequiredDisenchantSkill = 175 WHERE `Quality` = 4 AND `ItemLevel` > 80 AND `ItemLevel` < 95 AND RequiredDisenchantSkill IN (-1,0); #81-94
UPDATE `item_template` SET `DisenchantID` = 49, RequiredDisenchantSkill = 225 WHERE `class` = 2 AND `Quality` = 4 AND `ItemLevel` > 60 AND `ItemLevel` < 76 AND RequiredDisenchantSkill IN (-1,0); #61-75 weapon
UPDATE `item_template` SET `DisenchantID` = 50, RequiredDisenchantSkill = 250 WHERE `class` = 2 AND `Quality` = 4 AND `ItemLevel` > 75 AND `ItemLevel` < 81 AND RequiredDisenchantSkill IN (-1,0); #76-80 weapon
UPDATE `item_template` SET `DisenchantID` = 51, RequiredDisenchantSkill = 300 WHERE `Quality` = 4 AND `ItemLevel` > 94 AND `ItemLevel` < 101 AND RequiredDisenchantSkill IN (-1,0); #95-100
UPDATE `item_template` SET `DisenchantID` = 52, RequiredDisenchantSkill = 300 WHERE `Quality` = 4 AND `ItemLevel` > 104 AND `ItemLevel` < 165 AND RequiredDisenchantSkill IN (-1,0); #105-164
UPDATE `item_template` SET `DisenchantID` = 53, RequiredDisenchantSkill = 350 WHERE `Quality` = 4 AND `ItemLevel` > 164 AND `ItemLevel` < 201 AND RequiredDisenchantSkill IN (-1,0); #165-200
UPDATE `item_template` SET `DisenchantID` = 54, RequiredDisenchantSkill = 375 WHERE `Quality` = 4 AND `ItemLevel` > 200 AND `ItemLevel` < 285 AND RequiredDisenchantSkill IN (-1,0); #201-284
UPDATE `item_template` SET `DisenchantID` = 56, RequiredDisenchantSkill = 450 WHERE `Quality` = 4 AND `ItemLevel` > 284 AND `ItemLevel` < 360 AND RequiredDisenchantSkill IN (-1,0); #285-359
UPDATE `item_template` SET `DisenchantID` = 57, RequiredDisenchantSkill = 500 WHERE `Quality` = 4 AND `ItemLevel` > 359 AND RequiredDisenchantSkill IN (-1,0) AND RequiredDisenchantSkill IN (-1,0); #360+
UPDATE `item_template` SET `DisenchantID` = 0 WHERE `Quality` != 2 AND `Quality` != 3 AND `Quality` != 4 AND RequiredDisenchantSkill IN (-1,0);
