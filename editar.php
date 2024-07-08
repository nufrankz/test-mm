<?php
require_once 'vendor/autoload.php';
require_once 'conexion.php';

$loader = new \Twig\Loader\FilesystemLoader('templates');
$twig = new \Twig\Environment($loader);

// Manejo de solicitudes POST y DELETE
if ($_SERVER['REQUEST_METHOD'] === 'POST' || $_SERVER['REQUEST_METHOD'] === 'DELETE') {
    if ($_SERVER['REQUEST_METHOD'] === 'DELETE') {
        // Manejo de eliminación de noticia para solicitudes DELETE
        parse_str(file_get_contents('php://input'), $_DELETE); // Parse the DELETE request data
        if (isset($_DELETE['id'])) {
            $id = intval($_DELETE['id']);
            $mysqli->query("DELETE FROM noticia WHERE id = $id");
            header('Location: index.php');
            exit();
        }
    } elseif (isset($_POST['id'])) {
        // Manejo de actualización o creación de noticia
        $id = intval($_POST['id']);
        $titulo = $mysqli->real_escape_string($_POST['titulo']);
        $contenido = $mysqli->real_escape_string($_POST['contenido']);
        $fecha = $_POST['fecha'];
        $video = $mysqli->real_escape_string($_POST['video']);
        $autor = $mysqli->real_escape_string($_POST['autor']);

        if ($id > 0) {
            // Actualizar noticia existente
            $mysqli->query("UPDATE noticia SET titulo = '$titulo', contenido = '$contenido', fecha = '$fecha', video = '$video', autor = '$autor' WHERE id = $id");
        } else {
            // Crear nueva noticia
            $mysqli->query("INSERT INTO noticia (titulo, contenido, fecha, video, autor) VALUES ('$titulo', '$contenido', '$fecha', '$video', '$autor')");
        }
        header('Location: index.php');
        exit();
    }
}

// Manejo de solicitudes GET
$id = isset($_GET['id']) ? intval($_GET['id']) : 0;
if ($id > 0) {
    // Cargar noticia existente para edición
    $result = $mysqli->query("SELECT * FROM noticia WHERE id = $id");
    $noticia = $result->fetch_assoc();
    if (!$noticia) {
        header('Location: index.php');
        exit();
    }
} else {
    // Crear una nueva noticia, sin datos previos
    $noticia = null;
}

echo $twig->render('editar.html.twig', ['noticia' => $noticia]);
?>
