-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema sharingvideodb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema sharingvideodb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sharingvideodb` DEFAULT CHARACTER SET utf8 ;
USE `sharingvideodb` ;

-- -----------------------------------------------------
-- Table `sharingvideodb`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sharingvideodb`.`category` (
  `CategoryId` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `CategoryName` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL COMMENT '',
  `CategoryDes` LONGTEXT CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`CategoryId`)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sharingvideodb`.`video`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sharingvideodb`.`video` (
  `VideoId` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `CategoryId` INT(11) NOT NULL COMMENT '',
  `Title` VARCHAR(200) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL COMMENT '',
  `FilePath` VARCHAR(200) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL COMMENT '',
  `Size` MEDIUMINT(9) NULL DEFAULT NULL COMMENT '',
  `Description` LONGTEXT CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL COMMENT '',
  `DateCreate` DATE NOT NULL COMMENT '',
  `NumLike` INT(11) NULL DEFAULT NULL COMMENT '',
  `NumShare` INT(11) NULL DEFAULT NULL COMMENT '',
  `Img` VARCHAR(100) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`VideoId`, `CategoryId`)  COMMENT '',
  INDEX `fk_Video_CATEGORY1_idx` (`CategoryId` ASC)  COMMENT '',
  CONSTRAINT `fk_Video_CATEGORY1`
    FOREIGN KEY (`CategoryId`)
    REFERENCES `sharingvideodb`.`category` (`CategoryId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sharingvideodb`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sharingvideodb`.`user` (
  `UserId` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `UserName` VARCHAR(100) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL COMMENT '',
  `Email` VARCHAR(100) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL COMMENT '',
  `DateCreated` DATE NULL DEFAULT NULL COMMENT '',
  `DateModified` DATE NULL DEFAULT NULL COMMENT '',
  `Password` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL COMMENT '',
  `Name` VARCHAR(100) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL COMMENT '',
  `Gender` INT(11) NULL DEFAULT NULL COMMENT '',
  `DOB` DATE NULL DEFAULT NULL COMMENT '',
  `Avatar` VARCHAR(100) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`UserId`)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sharingvideodb`.`comment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sharingvideodb`.`comment` (
  `CommentId` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `VideoId` INT(11) NOT NULL COMMENT '',
  `UserId` INT(11) NOT NULL COMMENT '',
  `Content` LONGTEXT CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL COMMENT '',
  `Created` DATETIME NOT NULL COMMENT '',
  PRIMARY KEY (`CommentId`, `VideoId`, `UserId`)  COMMENT '',
  INDEX `fk_comment_video1_idx` (`VideoId` ASC)  COMMENT '',
  INDEX `fk_comment_user1_idx` (`UserId` ASC)  COMMENT '',
  CONSTRAINT `fk_comment_video1`
    FOREIGN KEY (`VideoId`)
    REFERENCES `sharingvideodb`.`video` (`VideoId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comment_user1`
    FOREIGN KEY (`UserId`)
    REFERENCES `sharingvideodb`.`user` (`UserId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 49
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `sharingvideodb`.`recentlyviewed`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sharingvideodb`.`recentlyviewed` (
  `UserId` INT(11) NOT NULL COMMENT '',
  `Viewed_date` DATE NOT NULL COMMENT '',
  `VideoId` INT(11) NOT NULL COMMENT '',
  PRIMARY KEY (`UserId`, `VideoId`)  COMMENT '',
  INDEX `fk_RECENTLYVIEWED_Video1_idx` (`VideoId` ASC)  COMMENT '',
  CONSTRAINT `fk_RECENTLYVIEWED_USER1`
    FOREIGN KEY (`UserId`)
    REFERENCES `sharingvideodb`.`user` (`UserId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_RECENTLYVIEWED_Video1`
    FOREIGN KEY (`VideoId`)
    REFERENCES `sharingvideodb`.`video` (`VideoId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sharingvideodb`.`recommend`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sharingvideodb`.`recommend` (
  `UserId` INT(11) NOT NULL COMMENT '',
  `VideoId` INT(11) NOT NULL COMMENT '',
  `Rating` FLOAT NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`UserId`, `VideoId`)  COMMENT '',
  INDEX `fk_Recommend_Video1_idx` (`VideoId` ASC)  COMMENT '',
  CONSTRAINT `fk_Recommend_USER1`
    FOREIGN KEY (`UserId`)
    REFERENCES `sharingvideodb`.`user` (`UserId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Recommend_Video1`
    FOREIGN KEY (`VideoId`)
    REFERENCES `sharingvideodb`.`video` (`VideoId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sharingvideodb`.`userquestion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sharingvideodb`.`userquestion` (
  `QuestionId` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `QuestionTitle` VARCHAR(200) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL COMMENT '',
  `QContent` LONGTEXT CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL COMMENT '',
  `DateAsked` DATETIME NOT NULL COMMENT '',
  `UserId` INT(11) NOT NULL COMMENT '',
  PRIMARY KEY (`QuestionId`, `UserId`)  COMMENT '',
  INDEX `fk_USERQUESTION_USER1_idx` (`UserId` ASC)  COMMENT '',
  CONSTRAINT `fk_USERQUESTION_USER1`
    FOREIGN KEY (`UserId`)
    REFERENCES `sharingvideodb`.`user` (`UserId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
