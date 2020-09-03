<?php
include "./header.php";
require_once "./connectiondpdo.inc.php";
$action = $_GET['action']; //soit Ajouter soir Modifier
if ($action == "Supp") {
    $num = $_GET['num']; //recuperation de la valeur dans l'url
    $req = $Pdo->prepare('delete from nationalite where num =:num');
    $req->bindParam(':num', $num);
    $nb = $req->execute();
} else if ($action == "Modifier") {
    $libelle = $_POST['libelle']; // recuperation du libelle entrer dans le formulaire 
    $num = $_POST['num']; // recuperation du num entrer dans le formulaire si l'action est modifier
    $req = $Pdo->prepare('update nationalite set libelle= :libelle where num =:num');
    $req->bindParam(':libelle', $libelle);
    $req->bindParam(':num', $num);
} else {
    $libelle = $_POST['libelle']; // recuperation du libelle entrer dans le formulaire 
    $req = $Pdo->prepare('insert into nationalite(libelle) value(:libelle)');
    $req->bindParam(':libelle', $libelle);
}
$nb = $req->execute();
$message = $action == "Supp" ? "suprimer" :($action == "Modifier" ? "modifiée" : "ajoutée");


if ($nb == 1) {
    $_SESSION['message'] = ["success" => "La nationalité a bien étè " . $message . " !"];
} else {

    $_SESSION['message'] = ["danger" => "La nationalité n'a pas étè " . $message . " !"];
}
header('location:listeNationalites.php');
exit;
