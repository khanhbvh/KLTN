-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema sharingvideodb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema sharingvideodb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sharingvideodb` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
USE `sharingvideodb` ;

-- -----------------------------------------------------
-- Table `sharingvideodb`.`CATEGORY`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sharingvideodb`.`CATEGORY` (
  `CategoryId` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `CategoryName` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL COMMENT '',
  `CategoryDes` LONGTEXT CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL COMMENT '',
  PRIMARY KEY (`CategoryId`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sharingvideodb`.`USER`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sharingvideodb`.`USER` (
  `UserId` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `UserName` VARCHAR(100) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL COMMENT '',
  `Email` VARCHAR(100) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL COMMENT '',
  `DateCreated` DATE NULL COMMENT '',
  `DateModified` DATE NULL COMMENT '',
  `Password` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL COMMENT '',
  `Name` VARCHAR(100) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL COMMENT '',
  `Gender` INT NULL COMMENT '',
  `DOB` DATE NULL COMMENT '',
  `Avatar` VARCHAR(100) NULL COMMENT '',
  PRIMARY KEY (`UserId`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sharingvideodb`.`Video`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sharingvideodb`.`Video` (
  `VideoId` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `CategoryId` INT NOT NULL COMMENT '',
  `Title` VARCHAR(200) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL COMMENT '',
  `FilePath` VARCHAR(200) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL COMMENT '',
  `Size` MEDIUMINT NULL COMMENT '',
  `Description` LONGTEXT CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL COMMENT '',
  `DateCreate` DATE NOT NULL COMMENT '',
  `NumLike` INT NULL COMMENT '',
  `NumShare` INT NULL COMMENT '',
  `Img` VARCHAR(100) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL COMMENT '',
  PRIMARY KEY (`VideoId`, `CategoryId`)  COMMENT '',
  INDEX `fk_Video_CATEGORY1_idx` (`CategoryId` ASC)  COMMENT '',
  CONSTRAINT `fk_Video_CATEGORY1`
    FOREIGN KEY (`CategoryId`)
    REFERENCES `sharingvideodb`.`CATEGORY` (`CategoryId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sharingvideodb`.`RECENTLYVIEWED`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sharingvideodb`.`RECENTLYVIEWED` (
  `UserId` INT NOT NULL COMMENT '',
  `Viewed_date` DATE NOT NULL COMMENT '',
  `VideoId` INT NOT NULL COMMENT '',
  PRIMARY KEY (`UserId`, `VideoId`)  COMMENT '',
  INDEX `fk_RECENTLYVIEWED_Video1_idx` (`VideoId` ASC)  COMMENT '',
  CONSTRAINT `fk_RECENTLYVIEWED_USER1`
    FOREIGN KEY (`UserId`)
    REFERENCES `sharingvideodb`.`USER` (`UserId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_RECENTLYVIEWED_Video1`
    FOREIGN KEY (`VideoId`)
    REFERENCES `sharingvideodb`.`Video` (`VideoId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sharingvideodb`.`USERQUESTION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sharingvideodb`.`USERQUESTION` (
  `QuestionId` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `QuestionTitle` VARCHAR(200) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL COMMENT '',
  `QContent` LONGTEXT CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL COMMENT '',
  `DateAsked` DATETIME NOT NULL COMMENT '',
  `UserId` INT NOT NULL COMMENT '',
  PRIMARY KEY (`QuestionId`, `UserId`)  COMMENT '',
  INDEX `fk_USERQUESTION_USER1_idx` (`UserId` ASC)  COMMENT '',
  CONSTRAINT `fk_USERQUESTION_USER1`
    FOREIGN KEY (`UserId`)
    REFERENCES `sharingvideodb`.`USER` (`UserId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sharingvideodb`.`COMMENT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sharingvideodb`.`COMMENT` (
  `CommentId` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `UserId` INT NOT NULL COMMENT '',
  `VideoId` INT NOT NULL COMMENT '',
  `Content` LONGTEXT CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL COMMENT '',
  `Created` DATETIME NOT NULL COMMENT '',
  PRIMARY KEY (`CommentId`, `UserId`, `VideoId`)  COMMENT '',
  INDEX `fk_COMMENT_USER_idx` (`UserId` ASC)  COMMENT '',
  INDEX `fk_COMMENT_Video1_idx` (`VideoId` ASC)  COMMENT '',
  CONSTRAINT `fk_COMMENT_USER`
    FOREIGN KEY (`UserId`)
    REFERENCES `sharingvideodb`.`USER` (`UserId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_COMMENT_Video1`
    FOREIGN KEY (`VideoId`)
    REFERENCES `sharingvideodb`.`Video` (`VideoId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sharingvideodb`.`Recommend`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sharingvideodb`.`Recommend` (
  `UserId` INT NOT NULL COMMENT '',
  `VideoId` INT NOT NULL COMMENT '',
  `Rating` FLOAT NULL COMMENT '',
  PRIMARY KEY (`UserId`, `VideoId`)  COMMENT '',
  INDEX `fk_Recommend_Video1_idx` (`VideoId` ASC)  COMMENT '',
  CONSTRAINT `fk_Recommend_USER1`
    FOREIGN KEY (`UserId`)
    REFERENCES `sharingvideodb`.`USER` (`UserId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Recommend_Video1`
    FOREIGN KEY (`VideoId`)
    REFERENCES `sharingvideodb`.`Video` (`VideoId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
