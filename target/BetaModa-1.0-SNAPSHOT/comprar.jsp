<%-- 
    Document   : comprar
    Created on : 17/10/2024, 2:38:52 p. m.
    Author     : Nicolas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.HashMap"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beta Moda - Comprar</title>
    <style>
        /* Tus estilos previos */
    </style>
</head>
<body>
    <div class="header">
        <h1>Beta Moda</h1>
        <p>Completa tu compra</p>
    </div>
    <div class="container">
        <h2>Carrito de Compras</h2>
        
        <%
            // Aquí definimos los productos
            HashMap<String, String[]> productos = new HashMap<>();
            productos.put("1", new String[]{"Producto 1", "Descripción del producto 1", "$50,000 COP", "imagenes/Mercurial.png"});
            productos.put("2", new String[]{"Producto 2", "Descripción del producto 2", "$70,000 COP", "imagenes/traje.png"});
            
            // Obtenemos el productoId de los parámetros de la solicitud
            String productoId = request.getParameter("productoId");
            String[] producto = productos.get(productoId);
            
            if (producto != null) {
        %>
            <div class="product">
                <img src="<%= producto[3] %>" alt="<%= producto[0] %>">
                <div class="product-details">
                    <h3><%= producto[0] %></h3>
                    <p><%= producto[1] %></p>
                    <p class="price"><%= producto[2] %></p>
                </div>
            </div>
            <div class="buttons">
                <button class="buy">Comprar</button>
                <button class="cancel" onclick="window.location.href='index.jsp'">Cancelar</button>
            </div>
        <%
            } else {
        %>
            <p>Producto no encontrado.</p>
            <button class="cancel" onclick="window.location.href='index.jsp'">Regresar</button>
        <%
            }
        %>
    </div>
</body>
</html>
