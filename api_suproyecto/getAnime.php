<?php
$host = 'localhost';
$user = 'root';
$pass = '';
$dbname = 'animeDB';

// Crear conexión
$conn = new mysqli($host, $user, $pass, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    http_response_code(500);
    echo json_encode(['error' => 'Error de conexión: ' . $conn->connect_error]);
    exit;
}

// Consulta MySQL
$sql = "SELECT * FROM anime_series";
$result = $conn->query($sql);

$animes = [];

if ($result && $result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $animes[] = $row;
    }
}

$conn->close();
header("Content-Type: application/json");
echo json_encode($animes);

// Ejemplo de prueba: http://localhost/api_anime/getAnime.php
?>
