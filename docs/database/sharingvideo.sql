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
AUTO_INCREMENT = 5
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
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sharingvideodb`.`type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sharingvideodb`.`type` (
  `TypeId` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `CategoryId` INT(11) NOT NULL COMMENT '',
  `TypeName` VARCHAR(100) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL COMMENT '',
  `TypeDes` LONGTEXT CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`TypeId`, `CategoryId`)  COMMENT '',
  INDEX `fk_Type_category1_idx` (`CategoryId` ASC)  COMMENT '',
  CONSTRAINT `fk_Type_category1`
    FOREIGN KEY (`CategoryId`)
    REFERENCES `sharingvideodb`.`category` (`CategoryId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 14
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sharingvideodb`.`Country`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sharingvideodb`.`Country` (
  `CountryId` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `CountryName` VARCHAR(100) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL COMMENT '',
  PRIMARY KEY (`CountryId`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sharingvideodb`.`video`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sharingvideodb`.`video` (
  `VideoId` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `UserId` INT(11) NOT NULL COMMENT '',
  `TypeId` INT(11) NOT NULL COMMENT '',
  `CategoryId` INT(11) NOT NULL COMMENT '',
  `CountryId` INT NOT NULL COMMENT '',
  `Title` VARCHAR(200) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL COMMENT '',
  `FilePath` VARCHAR(200) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL COMMENT '',
  `Size` MEDIUMINT(9) NULL DEFAULT NULL COMMENT '',
  `Description` LONGTEXT CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL COMMENT '',
  `DateCreate` DATETIME NOT NULL COMMENT '',
  `NumView` INT(11) NULL DEFAULT NULL COMMENT '',
  `NumLike` INT(11) NULL DEFAULT NULL COMMENT '',
  `NumShare` INT(11) NULL COMMENT '',
  `Img` VARCHAR(100) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL COMMENT '',
  PRIMARY KEY (`VideoId`, `UserId`, `TypeId`, `CategoryId`, `CountryId`)  COMMENT '',
  INDEX `fk_video_user1_idx` (`UserId` ASC)  COMMENT '',
  INDEX `fk_video_Type1_idx` (`TypeId` ASC, `CategoryId` ASC)  COMMENT '',
  INDEX `fk_video_Country2_idx` (`CountryId` ASC)  COMMENT '',
  CONSTRAINT `fk_video_Type1`
    FOREIGN KEY (`TypeId` , `CategoryId`)
    REFERENCES `sharingvideodb`.`type` (`TypeId` , `CategoryId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_video_user1`
    FOREIGN KEY (`UserId`)
    REFERENCES `sharingvideodb`.`user` (`UserId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_video_Country2`
    FOREIGN KEY (`CountryId`)
    REFERENCES `sharingvideodb`.`Country` (`CountryId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 39
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
  CONSTRAINT `fk_comment_user1`
    FOREIGN KEY (`UserId`)
    REFERENCES `sharingvideodb`.`user` (`UserId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comment_video1`
    FOREIGN KEY (`VideoId`)
    REFERENCES `sharingvideodb`.`video` (`VideoId`)
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
