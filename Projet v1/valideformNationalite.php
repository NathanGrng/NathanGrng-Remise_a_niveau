<?php
session_start();
require_once "./connectiondpdo.inc.php";
$action = $_GET['action']; //soit Ajouter soir Modifier
if ($action == "Supp") {
    $num = $_GET['num']; //recuperation de la valeur dans l'url
    $req = $Pdo->prepare('delete from nationalite where num =:num');
    $req->bindParam(':num', $num);
    $nb = $req->execute();
} else{
    $libelle = $_POST['libelle']; // recuperation du libelle entrer dans le formulaire
    $continent = $_POST['Continent']; // recuperation du continent choisis dans le formulaire
    if ($action == "Modifier") {
        $num = $_POST['num']; // recuperation du num entrer dans le formulaire si l'action est modifier
        $req = $Pdo->prepare('update nationalite set libelle= :libelle , numContinent= :continent where num =:num');
        $req->bindParam(':libelle', $libelle);
        $req->bindParam(':continent', $continent);
        $req->bindParam(':num', $num);
    } else { 
        $req = $Pdo->prepare('insert into nationalite(libelle,numContinent) value(:libelle,:continent)');
        $req->bindParam(':libelle', $libelle);
        $req->bindParam(':continent', $continent);
    }
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
