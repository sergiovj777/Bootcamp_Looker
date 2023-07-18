select p.Fecha, c.Ciudad
from Pedidos as p
join Clientes as c on p.Id_Clientes=c.Id_Clientes
join Detalles_Pedido as d on p.Id_Pedidos=d.Id_Pedidos
where d.Cantidad = (select max(Cantidad) from Detalles_Pedido )

SELECT C.Nombre, c.Ciudad
FROM Pedidos AS p
JOIN Clientes AS c ON p.Id_Clientes = c.Id_Clientes
JOIN Detalles_Pedido AS d ON p.Id_Pedidos = d.Id_Pedidos
WHERE d.Cantidad = (SELECT MAX(d2.Cantidad) FROM Detalles_Pedido AS d2)

SELECT Nombre, Ciudad FROM Clientes c WHERE c.Id_Clientes IN
  (SELECT c.Id_Clientes FROM Pedidos p WHERE p.Id_Pedidos IN 
    (SELECT d.Id_Pedidos FROM Detalles_Pedido d WHERE Cantidad = 
      (SELECT MAX(Cantidad) FROM Detalles_Pedido)))





