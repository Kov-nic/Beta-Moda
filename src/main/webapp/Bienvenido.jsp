<%-- 
    Document   : Bienvenido
    Created on : 23/09/2024, 1:38:06 a. m.
    Author     : Nicolás Hernández
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bienvenido</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            border: 2px solid black; /* Borde negro para el recuadro general */
        }
        h1 {
            color: #4CAF50; /* Color verde para el texto */
        }
    </style>
    <script>
        // Redirige a Inicio.jsp después de 1 segundo
        setTimeout(() => {
            window.location.href = 'Inicio.jsp';
        }, 1000);
    </script>
</head>
<body>
    <div class="container">
        <h1>Bienvenido a nuestra aplicación web</h1>
    </div>
</body>
</html>
