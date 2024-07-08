<?php
require_once 'vendor/autoload.php';
require_once 'conexion.php';

$loader = new \Twig\Loader\FilesystemLoader('templates');
$twig = new \Twig\Environment($loader);

$result = $mysqli->query("SELECT * FROM noticia ORDER BY fecha DESC");

if (!$result) {
    echo $twig->render('index.html.twig', [
        'error' => 'Hubo un problema al recuperar las noticias: ' . $mysqli->error
    ]);
    exit();
}

$noticias = $result->fetch_all(MYSQLI_ASSOC);

if (empty($noticias)) {
    echo $twig->render('index.html.twig', [
        'mensaje' => 'No se encontraron noticias.',
        'noticias' => []
    ]);
} else {
    echo $twig->render('index.html.twig', [
        'noticias' => $noticias
    ]);
}

echo $twig->render('index.html.twig', ['noticias' => $noticias]);
?>
