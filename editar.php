<?php
require_once 'vendor/autoload.php';
require_once 'conexion.php';

$loader = new \Twig\Loader\FilesystemLoader('templates');
$twig = new \Twig\Environment($loader);

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['delete'])) {
        // Borrar noticia
        $id = intval($_POST['id']);
        $mysqli->query("DELETE FROM noticia WHERE id = $id");
        header('Location: index.php');
        exit;
    }

    $titulo = $mysqli->real_escape_string($_POST['titulo']);
    $contenido = $mysqli->real_escape_string($_POST['contenido']);
    $fecha = $mysqli->real_escape_string($_POST['fecha']);
    $video = $mysqli->real_escape_string($_POST['video']);
    $autor = $mysqli->real_escape_string($_POST['autor']);

    if (isset($_POST['id'])) {
        // Actualizar noticia
        $id = intval($_POST['id']);
        $mysqli->query("UPDATE noticia SET titulo='$titulo', contenido='$contenido', fecha='$fecha', video='$video', autor='$autor' WHERE id=$id");
    } else {
        // Crear nueva noticia
        $mysqli->query("INSERT INTO noticia (titulo, contenido, fecha, video, autor) VALUES ('$titulo', '$contenido', '$fecha', '$video', '$autor')");
    }

    header('Location: index.php');
    exit;
} else {
    $noticia = null;
    if (isset($_GET['id'])) {
        $id = intval($_GET['id']);
        $result = $mysqli->query("SELECT * FROM noticia WHERE id = $id");
        $noticia = $result->fetch_assoc();
    }
    
    echo $twig->render('editar.html.twig', ['noticia' => $noticia]);
}
?>
