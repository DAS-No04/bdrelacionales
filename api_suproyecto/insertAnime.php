<?php
header("Content-Type: application/json");

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    http_response_code(405);
    echo json_encode(['error' => 'Solo método POST es permitido']);
    exit;
}

// Conectar a la BD animeDB
require 'conexionAnime.php';

$data = json_decode(file_get_contents('php://input'), true);

$titulo = $data['titulo'];
$genero = $data['genero'];
$anio_estreno = $data['anio_estreno'];
$estudio_animacion = $data['estudio_animacion'];

$query = $conn->prepare("INSERT INTO anime_series (titulo, genero, año_estreno, estudio_animacion) VALUES (?, ?, ?, ?)");

if (!$query) {
    http_response_code(500);
    echo json_encode(["error" => "Ocurrió un error"]);
    exit;
}

$query->bind_param("ssis", $titulo, $genero, $anio_estreno, $estudio_animacion);

if ($query->execute()) {
    echo json_encode(["mensaje" => "Anime insertado correctamente", "anime_id" => $query->insert_id]);
} else {
    http_response_code(500);
    echo json_encode(["error" => "Falló la inserción: " . $query->error]);
}

$query->close();
$conn->close();
?>
