<?php
header("Content-Type: application/json");

if ($_SERVER['REQUEST_METHOD'] !== 'PUT') {
    http_response_code(405);
    echo json_encode(['error' => 'Solo método PUT es permitido']);
    exit;
}

require 'conexionAnime.php'; // asegúrate de que esté correctamente nombrado

$input = json_decode(file_get_contents('php://input'), true);

$id = intval($input["id"]);
$titulo = $conn->real_escape_string($input["titulo"]);
$genero = $conn->real_escape_string($input["genero"]);
$anio_estreno = intval($input["anio_estreno"]);
$estudio_animacion = $conn->real_escape_string($input["estudio_animacion"]);

$query = "UPDATE anime_series SET titulo = ?, genero = ?, anio_estreno = ?, estudio_animacion = ? WHERE id = ?";

$st = $conn->prepare($query);

if (!$st) {
    http_response_code(500);
    echo json_encode(["error" => "Error en la consulta: " . $conn->error]);
    exit;
}

$st->bind_param("ssisi", $titulo, $genero, $anio_estreno, $estudio_animacion, $id);

if ($st->execute()) {
    if ($st->affected_rows > 0) {
        echo json_encode(["message" => "Anime actualizado correctamente"]);
    } else {
        http_response_code(404);
        echo json_encode(["error" => "No se encontró el anime con id: $id"]);
    }
} else {
    http_response_code(500);
    echo json_encode(["error" => "Error al ejecutar la actualización"]);
}

$st->close();
$conn->close();
?>
