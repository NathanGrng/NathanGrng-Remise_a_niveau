<?php $action = $_GET['action'];
switch ($action) {
    case 'list':
        $lesContinents = Continent::findAll();
        require_once "vues/listeContinent.php";
        break;
    case 'add':
        $mode="Ajouter";
        echo "eeeeeeh laa";
        require_once("vues/formContinent.php");
        break;
    case 'update':
        $mode="Modifer";
        require_once "vues/formContinent.php";
        break;
    case 'delete':
        # code...
        break;    
        case 'validForm':
        $continent= new Continent();
        if(empty($_POST['num'])){//cas d'une creation
            $continent->setLibelle($_POST['libelle']);
            $nb=Continent::add($continent);
            $message="modifié";
        }else{

        }
        if($nb==1){
            $_SESSION['message']=["success","Le continent a bien été $message"];
        }
        else{
            $_SESSION['message']=["Danger","Le continent n'a pas été $message"];
        }
        header('location: index.php?uc=continent&action=list');
        break;

    default:
        # code...
        break;
}
