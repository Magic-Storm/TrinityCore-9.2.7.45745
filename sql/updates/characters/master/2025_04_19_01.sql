DROP TABLE IF EXISTS `character_instance_lock`;
CREATE TABLE `character_instance_lock`  (
  `guid` bigint UNSIGNED NOT NULL,
  `mapId` int UNSIGNED NOT NULL,
  `lockId` int UNSIGNED NOT NULL,
  `instanceId` int UNSIGNED NULL DEFAULT NULL,
  `difficulty` tinyint UNSIGNED NULL DEFAULT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `completedEncountersMask` int UNSIGNED NULL DEFAULT NULL,
  `entranceWorldSafeLocId` int UNSIGNED NULL DEFAULT NULL,
  `expiryTime` bigint UNSIGNED NULL DEFAULT NULL,
  `extended` tinyint UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`guid`, `mapId`, `lockId`) USING BTREE,
  UNIQUE INDEX `uk_character_instanceId`(`guid` ASC, `instanceId` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;


DROP TABLE IF EXISTS `instance`;
CREATE TABLE `instance`  (
  `instanceId` int UNSIGNED NOT NULL DEFAULT 0,
  `map` smallint UNSIGNED NOT NULL DEFAULT 0,
  `resettime` bigint NOT NULL DEFAULT 0,
  `difficulty` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `completedEncountersMask` int UNSIGNED NOT NULL DEFAULT 0,
  `data` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `entranceWorldSafeLocId` int UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`instanceId`) USING BTREE,
  INDEX `map`(`map` ASC) USING BTREE,
  INDEX `resettime`(`resettime` ASC) USING BTREE,
  INDEX `difficulty`(`difficulty` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;


