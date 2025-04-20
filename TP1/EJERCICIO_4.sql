-- ejercicio 4
-- Ver plan de ejecución
EXPLAIN SELECT * 
FROM productos
WHERE precio > 1498;
CREATE INDEX idx_precio ON productos(precio);
EXPLAIN SELECT * FROM productos WHERE precio > 1498;