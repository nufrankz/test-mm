<?php
require_once 'vendor/autoload.php';
require_once 'conexion.php';

$loader = new \Twig\Loader\FilesystemLoader('templates');
$twig = new \Twig\Environment($loader);

$id = intval($_GET['id']);
$result = $mysqli->query("SELECT * FROM noticia WHERE id = $id");
$noticia = $result->fetch_assoc();

echo $twig->render('detalle.html.twig', ['noticia' => $noticia]);
?>
