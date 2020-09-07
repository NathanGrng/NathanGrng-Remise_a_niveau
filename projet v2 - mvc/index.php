<?php session_start();
require_once "vues/header.php";
$uc = empty($_GET['uc']) ? "acceuil" : $_GET['uc'];
switch ($uc) {
    case 'acceuil':
        require "vues/Accueil.php";
        break;

    case 'continent':
        # code...
        break;

    default:
        # code...
        break;
}
require_once "vues/footer.php";
