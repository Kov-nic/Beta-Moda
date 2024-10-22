<%-- 
    Document   : Inicio
    Created on : 23/09/2024, 2:17:37 a. m.
    Author     : Nicolás Santiago Hernández Arias
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beta Moda - Inicio</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }
        .header {
            background-color: #4CAF50;
            color: white;
            padding: 15px;
            text-align: center;
            position: relative;
        }
        .logout-button {
            position: absolute;
            top: 15px;
            right: 15px;
            background-color: #f44336;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px;
            cursor: pointer;
        }
        .logout-button:hover {
            background-color: #d32f2f;
        }
        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 20px;
        }
        .product {
            background-color: white;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin: 10px;
            padding: 20px;
            text-align: center;
            width: 200px;
        }
        .product img {
            max-width: 100%;
            border-radius: 10px;
        }
        .product h2 {
            font-size: 18px;
            margin: 10px 0;
        }
        .product p {
            color: #888;
            font-size: 14px;
        }
        .product .price {
            color: #4CAF50;
            font-size: 16px;
            font-weight: bold;
        }
        .product button {
            background-color: #4CAF50;
            border: none;
            border-radius: 5px;
            color: white;
            cursor: pointer;
            padding: 10px;
            width: 100%;
        }
        .product button:hover {
            background-color: #45a049;
        }
    </style>
    <script>
        function logout() {
            window.location.href = 'index.html';
        }
        
        function comprar(productoId) {
            window.location.href = 'comprar.jsp?productoId=' + productoId;
        }
    </script>
</head>
<body>
    <div class="header">
        <h1>Beta Moda</h1>
        <p>Bienvenido a nuestra tienda de moda</p>
        <button class="logout-button" onclick="logout()">Cerrar Sesión</button>
    </div>
    <div class="container">
        <div class="product">
            <img src="imagenes/Mercurial.png" alt="Producto 1">
            <h2>Producto 1</h2>
            <p>Descripción del producto 1</p>
            <p class="price">$50,000 COP</p>
            <button onclick="comprar('1')">Comprar</button>
        </div>
        <div class="product">
            <img src="imagenes/traje.png" alt="Producto 2">
            <h2>Producto 2</h2>
            <p>Descripción del producto 2</p>
            <p class="price">$70,000 COP</p>
            <button onclick="comprar('2')">Comprar</button>
        </div>
        <!-- Añade más productos según sea necesario -->
    </div>
</body>
</html>
