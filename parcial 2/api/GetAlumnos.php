<?php
    header("Content-Type: application/json");
    Header("Access-Control-Allow-Origin: *");

    $usuarios=[
        ["id" => 1, "nombre" => "Paco Webos", "correo" => "pacoweb@gmail.com"],
        ["id" => 1, "nombre" => "Sebastian Leal", "correo" => "sebasleal@gmail.com"],
        ["id" => 1, "nombre" => "Horus Sazueta", "correo" => "Gordus@gmail.com"],
    ];

    echo json_encode($usuarios);

?>
