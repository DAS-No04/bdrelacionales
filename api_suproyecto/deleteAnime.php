<?php
header("Content-Type:application/json");

if ($_SERVER['REQUEST_METHOD'] !== 'DELETE') {
    http_response_code(405);
    echo json_encode(['error' => 'Solo método DELETE es permitido']);
    exit();
}

// Conectar a la BD animeDB
require 'conexionAnime.php';

$input = json_decode(file_get_contents('php://input'), true);
$id = intval($input["id"]);

$query = "DELETE FROM anime_series WHERE id = ?";

$st = $conn->prepare($query);
if (!$st) {
    http_response_code(500);
    echo json_encode(["error" => "Ocurrió un error en la consulta: " . $conn->error]);
    exit();
}

$st->bind_param("i", $id);
$st->execute();

if ($st->affected_rows > 0) {
    echo json_encode(["mensaje" => "Anime eliminado con éxito"]);
} else {
    http_response_code(404);
    echo json_encode(["error" => "No se encontró el anime con ID $id"]);
}

$st->close();
$conn->close();
?>
