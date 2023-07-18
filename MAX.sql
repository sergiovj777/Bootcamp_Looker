select Fecha,Monto
from Pedidos
where Monto =(SELECT MAX(Monto) from Pedidos)