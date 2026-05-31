<%-- 
    Document   : index
    Created on : 31/05/2026, 2:53:39 p. m.
    Author     : juane
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>FoodTruck Pedidos</title>
</head>
<body>

    <h1>Registro de pedidos FoodTruck</h1>

    <form action="PedidoServlet" method="post">

        <label>Nombre del cliente:</label><br>
        <input type="text" name="cliente"><br><br>

        <label>Producto:</label><br>
        <input type="text" name="producto"><br><br>

        <label>Total:</label><br>
        <input type="number" name="total"><br><br>

        <button type="submit">
            Guardar pedido
        </button>

    </form>

</body>
</html>