<?php

    $host = 'localhost'; // o '127.0.0.1' si trabajas localmente
    $user = 'root'; // cambia si tienes un usuario distinto
    $pass = ''; // cambia si tu usuario tiene contraseña
    $dbname = 'animeDB'; // nombre de tu base de datos

    // crear conexión
    $conn = new mysqli($host, $user, $pass, $dbname);

    // verificar conexión
    if ($conn->connect_error) { 
        http_response_code(500);
        echo json_encode(['error' => 'Error de conexión: ' . $conn->connect_error]);
        exit;
    }

?>
