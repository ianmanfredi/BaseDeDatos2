-- ejercicio 3
create table cuentas(
id int auto_increment primary key,
saldo decimal(10,2) not null
);
-- datos de ejemplo
insert into cuentas (saldo) values (1000.00),(2000.00),(3000.00);
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

START TRANSACTION;
SELECT saldo FROM cuentas WHERE id = 1;
UPDATE cuentas
SET saldo = saldo + 100
WHERE id = 1;
COMMIT;
-- ajustar a serializable
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
START TRANSACTION;
SELECT saldo FROM cuentas WHERE id = 1;
UPDATE cuentas
SET saldo = saldo + 50
WHERE id = 1;
COMMIT;