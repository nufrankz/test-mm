<?php
require_once 'vendor/autoload.php';
require_once 'conexion.php';

$loader = new \Twig\Loader\FilesystemLoader('templates');
$twig = new \Twig\Environment($loader);

$result = $mysqli->query("SELECT * FROM noticia");
$noticias = $result->fetch_all(MYSQLI_ASSOC);

echo $twig->render('index.html.twig', ['noticias' => $noticias]);
?>
