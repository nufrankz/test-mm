<?php
$mysqli = new mysqli('localhost', 'megamedia_fcocerda', 'jw-//zb/5OPxiZ[S', 'megamedia_fcocerda');
if ($mysqli->connect_error) {
    die('Error de Conexión (' . $mysqli->connect_errno . ') ' . $mysqli->connect_error);
}

$titulo = $mysqli->real_escape_string($_POST['titulo']);
$contenido = $mysqli->real_escape_string($_POST['contenido']);
$fecha = $mysqli->real_escape_string($_POST['fecha']);
$video = $mysqli->real_escape_string($_POST['video']);
$autor = $mysqli->real_escape_string($_POST['autor']);

$mysqli->query("INSERT INTO noticia (titulo, contenido, fecha, video, autor) VALUES ('$titulo', '$contenido', '$fecha', '$video', '$autor')");

header('Location: index.php');
?>
