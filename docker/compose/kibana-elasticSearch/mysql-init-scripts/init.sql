CREATE DATABASE IF NOT EXISTS db1;
CREATE DATABASE IF NOT EXISTS db2;
CREATE DATABASE IF NOT EXISTS db3;


USE db1;

CREATE TABLE sales_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    sales_amount DECIMAL(10, 2),
    sales_date DATE
);

INSERT INTO sales_data (product_name, category, sales_amount, sales_date)
VALUES
    ('Product A', 'Electronics', 1500.50, '2023-11-01'),
    ('Product B', 'Clothing', 800.20, '2023-11-02'),
    ('Product C', 'Home Goods', 1200.75, '2023-11-03'),
    ('Product D', 'Electronics', 2100.35, '2023-11-04'),
    ('Product E', 'Clothing', 950.80, '2023-11-05');



DELIMITER $$
CREATE PROCEDURE create_table(table_name VARCHAR(10))
BEGIN
    SET @create_table_sql = CONCAT('
        CREATE TABLE IF NOT EXISTS ', table_name, ' (
            id INT AUTO_INCREMENT PRIMARY KEY,
            column1 VARCHAR(50),
            column2 INT,
            column3 DECIMAL(10, 2),
            column4 DATE,
            column5 TEXT
        );
    ');

    PREPARE create_table_statement FROM @create_table_sql;
    EXECUTE create_table_statement;
    DEALLOCATE PREPARE create_table_statement;
END $$

CREATE PROCEDURE generate_data_table(table_name VARCHAR(10))
BEGIN
  DECLARE i INT DEFAULT 0;
  WHILE i < 20 DO
      SET @insert_table_sql = CONCAT('
        INSERT INTO ', table_name, ' (column1, column2, column3, column4, column5) VALUES (
          CONCAT(''Data1_'', ', i, '),
          RAND() * 100,
          RAND() * 1000,
          DATE_ADD(NOW(), INTERVAL -', i, ' DAY),
          CONCAT(''Description1_'', ', i, ')
        );
    ');

    PREPARE insert_table_statement FROM @insert_table_sql;
    EXECUTE insert_table_statement;
    DEALLOCATE PREPARE insert_table_statement;
    SET i = i + 1;
  END WHILE;
END $$
DELIMITER ;

CALL create_table('table1');
CALL create_table('table2');
CALL create_table('table3');
CALL create_table('table4');
CALL generate_data_table('table1');
CALL generate_data_table('table2');
CALL generate_data_table('table3');
CALL generate_data_table('table4');


USE db2;
DELIMITER $$
CREATE PROCEDURE create_table(table_name VARCHAR(10))
BEGIN
    SET @create_table_sql = CONCAT('
        CREATE TABLE IF NOT EXISTS ', table_name, ' (
            id INT AUTO_INCREMENT PRIMARY KEY,
            column1 VARCHAR(50),
            column2 INT,
            column3 DECIMAL(10, 2),
            column4 DATE,
            column5 TEXT
        );
    ');

    PREPARE create_table_statement FROM @create_table_sql;
    EXECUTE create_table_statement;
    DEALLOCATE PREPARE create_table_statement;
END $$

CREATE PROCEDURE generate_data_table(table_name VARCHAR(10))
BEGIN
  DECLARE i INT DEFAULT 0;
  WHILE i < 20 DO
      SET @insert_table_sql = CONCAT('
        INSERT INTO ', table_name, ' (column1, column2, column3, column4, column5) VALUES (
          CONCAT(''Data1_'', ', i, '),
          RAND() * 100,
          RAND() * 1000,
          DATE_ADD(NOW(), INTERVAL -', i, ' DAY),
          CONCAT(''Description1_'', ', i, ')
        );
    ');

    PREPARE insert_table_statement FROM @insert_table_sql;
    EXECUTE insert_table_statement;
    DEALLOCATE PREPARE insert_table_statement;
    SET i = i + 1;
  END WHILE;
END $$
DELIMITER ;

CALL create_table('table1');
CALL create_table('table2');
CALL create_table('table3');
CALL create_table('table4');
CALL generate_data_table('table1');
CALL generate_data_table('table2');
CALL generate_data_table('table3');
CALL generate_data_table('table4');


USE db3;
DELIMITER $$
CREATE PROCEDURE create_table(table_name VARCHAR(10))
BEGIN
    SET @create_table_sql = CONCAT('
        CREATE TABLE IF NOT EXISTS ', table_name, ' (
            id INT AUTO_INCREMENT PRIMARY KEY,
            column1 VARCHAR(50),
            column2 INT,
            column3 DECIMAL(10, 2),
            column4 DATE,
            column5 TEXT
        );
    ');

    PREPARE create_table_statement FROM @create_table_sql;
    EXECUTE create_table_statement;
    DEALLOCATE PREPARE create_table_statement;
END $$

CREATE PROCEDURE generate_data_table(table_name VARCHAR(10))
BEGIN
  DECLARE i INT DEFAULT 0;
  WHILE i < 20 DO
      SET @insert_table_sql = CONCAT('
        INSERT INTO ', table_name, ' (column1, column2, column3, column4, column5) VALUES (
          CONCAT(''Data1_'', ', i, '),
          RAND() * 100,
          RAND() * 1000,
          DATE_ADD(NOW(), INTERVAL -', i, ' DAY),
          CONCAT(''Description1_'', ', i, ')
        );
    ');

    PREPARE insert_table_statement FROM @insert_table_sql;
    EXECUTE insert_table_statement;
    DEALLOCATE PREPARE insert_table_statement;
    SET i = i + 1;
  END WHILE;
END $$
DELIMITER ;

CALL create_table('table1');
CALL create_table('table2');
CALL create_table('table3');
CALL create_table('table4');
CALL generate_data_table('table1');
CALL generate_data_table('table2');
CALL generate_data_table('table3');
CALL generate_data_table('table4');


