<?php
$mysqli = new mysqli('localhost', 'megamedia_fcocerda', 'jw-//zb/5OPxiZ[S', 'megamedia_fcocerda');
if ($mysqli->connect_error) {
    die('Error de Conexión (' . $mysqli->connect_errno . ') ' . $mysqli->connect_error);
}
?>
