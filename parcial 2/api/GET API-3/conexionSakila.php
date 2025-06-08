<?php

    $host = '192.168.1.21';//'localhost'
    $user = 'sakila_user';//'root'
    $pass = 'sakila';//''
    $dbname = 'sakila';//''

    //crear conexión
    $conn = new mysqli($host, $user, $pass, $dbname);

    //verificar conexión
    if($conn->connect_error){ 
     http_response_code(500);
     echo_json_encode(['error' => 'error de conexion: ' . $conn->connect_error]);
     exit;
    }

?>