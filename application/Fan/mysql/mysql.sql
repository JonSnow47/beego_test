--
CREATE DATABASE IF NOT EXISTS `Fan`;
USE `Fan`;
-- ----------------------------------------------

CREATE TABLE IF NOT EXISTS `article` (
  `id`      INT(16) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `title`   CHAR(32) UNIQUE NOT NULL,
  `author`  CHAR(16),
  `class`   CHAR(16),
  `content` TEXT NOT NULL,
  `picture` CHAR,
  `views`   INT(32) UNSIGNED DEFAULT 0,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status`  BOOL  NOT NULL DEFAULT 1
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------------------------

CREATE TABLE IF NOT EXISTS `admin`  (
  `id`      INT(16) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name`    CHAR(16)  UNIQUE NOT NULL,
  `password`  VARCHAR(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;