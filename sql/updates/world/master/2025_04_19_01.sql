ALTER TABLE `gossip_menu_option` 
CHANGE COLUMN `OptionIcon` `OptionNpc` tinyint UNSIGNED NOT NULL DEFAULT 0 AFTER `OptionID`;

DROP TABLE IF EXISTS `gossip_menu_option_addon`;
CREATE TABLE `gossip_menu_option_addon`  (
  `MenuID` int UNSIGNED NOT NULL DEFAULT 0,
  `OptionID` int UNSIGNED NOT NULL DEFAULT 0,
  `GarrTalentTreeID` int NULL DEFAULT NULL,
  `VerifiedBuild` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`MenuID`, `OptionID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;