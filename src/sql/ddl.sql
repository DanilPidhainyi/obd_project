SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

USE x4mspp0ssyvlauv8 ;

-- -----------------------------------------------------
-- Table x4mspp0ssyvlauv8.location
-- -----------------------------------------------------
DROP TABLE IF EXISTS x4mspp0ssyvlauv8.location ;

CREATE TABLE IF NOT EXISTS x4mspp0ssyvlauv8.location (
  id INT(11) NOT NULL,
  name VARCHAR(45) NULL,
  PRIMARY KEY (id))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table x4mspp0ssyvlauv8.producer
-- -----------------------------------------------------
DROP TABLE IF EXISTS x4mspp0ssyvlauv8.producer ;

CREATE TABLE IF NOT EXISTS x4mspp0ssyvlauv8.producer (
  id INT(11) NOT NULL,
  location INT(11) NULL,
  name VARCHAR(45) NULL,
  PRIMARY KEY (id),
  CONSTRAINT producer_location
    FOREIGN KEY (location)
    REFERENCES x4mspp0ssyvlauv8.location (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table x4mspp0ssyvlauv8.product
-- -----------------------------------------------------
DROP TABLE IF EXISTS x4mspp0ssyvlauv8.product ;

CREATE TABLE IF NOT EXISTS x4mspp0ssyvlauv8.product (
  id INT(11) NOT NULL,
  name VARCHAR(45) NULL,
  producer INT(11) NULL,
  PRIMARY KEY (id),
  CONSTRAINT product_producer
    FOREIGN KEY (producer)
    REFERENCES x4mspp0ssyvlauv8.producer (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table x4mspp0ssyvlauv8.delivery
-- -----------------------------------------------------
DROP TABLE IF EXISTS x4mspp0ssyvlauv8.delivery ;

CREATE TABLE IF NOT EXISTS x4mspp0ssyvlauv8.delivery (
  product INT(11) NULL,
  price INT(11) NULL,
  quantity INT(11) NULL,
  date DATE NULL,
  CONSTRAINT deliv_product
    FOREIGN KEY (product)
    REFERENCES x4mspp0ssyvlauv8.product (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table x4mspp0ssyvlauv8.sale
-- -----------------------------------------------------
DROP TABLE IF EXISTS x4mspp0ssyvlauv8.sale ;

CREATE TABLE IF NOT EXISTS x4mspp0ssyvlauv8.sale (
  product INT(11) NULL,
  date DATE NULL,
  cost INT(11) NULL,
  quantity INT(11) NULL,
  CONSTRAINT sale_product
    FOREIGN KEY (product)
    REFERENCES x4mspp0ssyvlauv8.product (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


