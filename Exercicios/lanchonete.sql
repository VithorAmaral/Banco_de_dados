# Criação do Banco de Dados "Lanchonete".

CREATE SCHEMA IF NOT EXISTS `Lanchonete` DEFAULT CHARACTER SET utf8;
USE `Lanchonete`;

# Criação da tabela "Cardápio".

CREATE TABLE IF NOT EXISTS `Lanchonete`.`Cardápio` (
  `id` INT NOT NULL,
  `codigo` VARCHAR(45) NULL,
  `nome` VARCHAR(45) NULL,
  `valor` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));

# Criação da tabela "Clientes".

CREATE TABLE IF NOT EXISTS `Lanchonete`.`Clientes` (
  `id` INT NOT NULL,
  `codigo` VARCHAR(45) NULL,
  `nome` VARCHAR(45) NULL,
  `telefoneFixo` VARCHAR(45) NULL,
  `telefoneCelular` VARCHAR(30) NULL,
  `enderecoLogradouro` VARCHAR(45) NULL,
  `complementoLogradouro` VARCHAR(45) NULL,
  `bairro` VARCHAR(45) NULL,
  `cidade` VARCHAR(45) NULL,
  `cep` VARCHAR(45) NULL,
  `Cardápio_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Cardápio_id`),
  INDEX `fk_Clientes_Cardápio_idx` (`Cardápio_id` ASC) VISIBLE,
  CONSTRAINT `fk_Clientes_Cardápio`
    FOREIGN KEY (`Cardápio_id`)
    REFERENCES `Lanchonete`.`Cardápio` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

# Criação da tabela "Entregadores".

CREATE TABLE IF NOT EXISTS `Lanchonete`.`Entregadores` (
  `id` INT NOT NULL,
  `codigo` VARCHAR(45) NULL,
  `nome` VARCHAR(45) NULL,
  `telefoneCelular` VARCHAR(45) NULL,
  `Clientes_id` INT NOT NULL,
  `Clientes_Cardápio_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Clientes_id`, `Clientes_Cardápio_id`),
  INDEX `fk_Entregadores_Clientes1_idx` (`Clientes_id` ASC, `Clientes_Cardápio_id` ASC) VISIBLE,
  CONSTRAINT `fk_Entregadores_Clientes1`
    FOREIGN KEY (`Clientes_id` , `Clientes_Cardápio_id`)
    REFERENCES `Lanchonete`.`Clientes` (`id` , `Cardápio_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

# Criação da tabela "Pedidos".

CREATE TABLE IF NOT EXISTS `Lanchonete`.`Pedidos` (
  `id` INT NOT NULL,
  `codigo` VARCHAR(45) NULL,
  `status` VARCHAR(45) NULL,
  `dataEmissao` VARCHAR(45) NULL,
  `Entregadores_id` INT NOT NULL,
  `Entregadores_Clientes_id` INT NOT NULL,
  `Entregadores_Clientes_Cardápio_id` INT NOT NULL,
  `Clientes_id` INT NOT NULL,
  `Clientes_Cardápio_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Entregadores_id`, `Entregadores_Clientes_id`, `Entregadores_Clientes_Cardápio_id`, `Clientes_id`, `Clientes_Cardápio_id`),
  INDEX `fk_Pedidos_Entregadores1_idx` (`Entregadores_id` ASC, `Entregadores_Clientes_id` ASC, `Entregadores_Clientes_Cardápio_id` ASC) VISIBLE,
  INDEX `fk_Pedidos_Clientes1_idx` (`Clientes_id` ASC, `Clientes_Cardápio_id` ASC) VISIBLE,
  CONSTRAINT `fk_Pedidos_Entregadores1`
    FOREIGN KEY (`Entregadores_id` , `Entregadores_Clientes_id` , `Entregadores_Clientes_Cardápio_id`)
    REFERENCES `Lanchonete`.`Entregadores` (`id` , `Clientes_id` , `Clientes_Cardápio_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pedidos_Clientes1`
    FOREIGN KEY (`Clientes_id` , `Clientes_Cardápio_id`)
    REFERENCES `Lanchonete`.`Clientes` (`id` , `Cardápio_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

# Inserção de dados na tabela "Cardápio".

INSERT INTO Lanchonete.Cardápio VALUES
(1, 01, "BIG MAC", 38.00),
(2, 02, "BIG TASTY", 35.00),
(3, 03, "MC CHICKEN", 33.00),
(4, 04, "CHEDDAR MCMELT", 30.00),
(5, 05, "QUARTEIRÃO COM QUEIJO", 32.00);

# Inserção de dados na tabela "Clientes".

INSERT INTO Lanchonete.Clientes VALUES
(1, 01, "JOÃO", 3333-3333, 99999-9999, "RUA X, 100", "AP. 100", "CENTRO", "CURITIBA", 83500-100,1),
(2, 02, "JOSÉ", 2222-2222, 88888-8888, "RUA Y, 200", "AP. 200", "CABRAL", "CURITIBA", 83500-200,2),
(3, 03, "MARIA", 4444-4444, 77777-7777, "RUA Z, 300", "AP. 300", "AHÚ", "CURITIBA", 83500-300,3),
(4, 04, "ANA", 6666-6666, 55555-5555, "RUA H, 400", "AP. 400", "MERCÊS", "CURITIBA", 83500-500,4),
(5, 05, "PEDRO", 2222-2222, 66666-6666, "RUA V, 600", "AP. 600", "CENTRO", "CURITIBA", 83500-100,5);

# Inserção de dados na tabela "Entregadores".

INSERT INTO Lanchonete.Entregadores VALUES
(1, 01, "JOÃO", 99999-9999, 1, 1),
(2, 02, "JOSÉ", 88888-8888, 2, 2),
(3, 03, "ANA", 77777-7777, 3, 3),
(4, 04, "MARIA", 66666-6666, 4, 4),
(5, 05, "PEDRO", 55555-5555, 5, 5);

# Inserção de dados na tabela "Pedidos".

INSERT INTO Lanchonete.Pedidos VALUES
(1, 01, 0, "18/08/22", 1, 1, 1, 1, 1),
(2, 02, 1, "18/08/22", 1, 1, 1, 1, 1),
(3, 03, 2, "18/08/22", 2, 2, 2, 2, 2),
(4, 04, 0, "18/08/22", 2, 2, 2, 2, 2),
(5, 05, 1, "18/08/22", 3, 3, 3, 3, 3),
(6, 06, 2, "18/08/22", 3, 3, 3, 3, 3),
(7, 07, 0, "18/08/22", 4, 4, 4, 4, 4),
(8, 08, 1, "18/08/22", 4, 4, 4, 4, 4),
(9, 09, 2, "18/08/22", 5, 5, 5, 5, 5),
(10, 10, 0, "18/08/22", 5, 5, 5, 5, 5);

# Consulta dos pedidos em preparação (status = 0).
