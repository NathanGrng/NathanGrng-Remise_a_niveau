<?php session_start();
require "modeles/connectiondpdo.inc.php";
require_once "vues/header.php";
require "modeles/Continent.php";

$uc = empty($_GET['uc']) ? "acceuil" : $_GET['uc'];
switch ($uc) {
    case 'acceuil':
        require "vues/Accueil.php";
        break;

    case 'continent':
        require "controllers/continentController.php";
        break;

    default:
        # code...
        break;
}
require_once "vues/footer.php";
