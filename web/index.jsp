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
    <input type="text" name="cliente" required minlength="3"
           pattern="[A-Za-zÁÉÍÓÚáéíóúÑñ ]+"
           title="El nombre solo debe contener letras y mínimo 3 caracteres">
    <br><br>

    <label>Producto:</label><br>
    <input type="text" name="producto" required minlength="3"
           title="El producto debe tener mínimo 3 caracteres">
    <br><br>

    <label>Total:</label><br>
    <input type="number" name="total" required min="1"
           title="El total debe ser un número mayor a cero">
    <br><br>

    <button type="submit">
        Guardar pedido
    </button>

</form>

</body>
</html>