<?php
require "./header.php";
require_once "./connectiondpdo.inc.php";
//liste des nationalites
$libelle = "";
$continentSel = "Tous";
$textreq = "select n.num, n.libelle as 'libNation', c.libelle as 'libContinent' from nationalite n, continent c where n.numContinent = c.id";
//construction de la requete
if (!empty($_GET)) {
    $continentSel = $_GET['Continent'];
    $libelle = $_GET['libelle'];
    if ($libelle != "") {
        $textreq .= " and n.libelle like '%" . $_GET['libelle'] . "%'";
    }
    if ($continentSel != "Tous") {
        $textreq .= " and c.id =" . $_GET['Continent'];
    }
}
$textreq .= " order by n.num";
echo $textreq;
$req = $Pdo->prepare($textreq);
$req->setFetchMode(PDO::FETCH_OBJ);
$req->execute();
$lesNationalites = $req->fetchAll();
//liste des continents
$reqContinent = $Pdo->prepare('select * from continent');
$reqContinent->setFetchMode(PDO::FETCH_OBJ);
$reqContinent->execute();
$lesContinents = $reqContinent->fetchAll();
if (!empty($_SESSION['message'])) {
    $mesMessages = $_SESSION['message'];
    foreach ($mesMessages as $key => $message) {
        echo '<div class="container pt-5"><div class="alert alert-' . $key . ' alert-dismissible fade show" role="alert">' . $message . ' <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button></div></div>';
    }
    $_SESSION['message'] = [""];
}
?>

<div class="container mt-5">
    <div class="row pt-3">
        <div class="col-9">
            <h2>Listes des nationalités</h2>
        </div>
        <div class="col-3"><a href="formNationalite.php?action=Ajouter" class="btn btn-success"><i class="fas fa-plus-circle"></i></i> Ajouter un nationalite</a></div>
    </div>
    <form action="" method="get" class="border norder-primary rounded p-3 mt-3 bb-3">
        <div class="row">
            <div class="col">
                <input type="text" class="form-control" id="libelle" placeholder="Saisir le libelle" name="libelle" value="<?= $libelle ?>" />
            </div>
            <div class="col">
                <select name="Continent" class="form-control">
                    <option value="Tous">Tout les continents</option>;
                    <?php foreach ($lesContinents as $continent) {
                        $selection = $continent->id == $continentSel ? 'selected' : '';
                        echo '<option value="' . $continent->id . '"' . $selection . '>' . $continent->libelle . '</option>';
                    } ?>
                </select>
            </div>
            <div class="col">
                <button type="submit" class="btn btn-success btn-block">Rechercher</button>
            </div>
    </form>
</div>
<table class="table table-hover">
    <thead>
        <tr class="d-flex">
            <th scope="col" class="col-md-2">Numéro</th>
            <th scope="col" class="col-md-5">Libellé</th>
            <th scope="col" class="col-md-3">Continent</th>
            <th scope="col" class="col-md-2">Actions</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($lesNationalites as $nationalite) { ?>
            <tr class="d-flex">
                <td class="col-md-2"><?= $nationalite->num ?></td>
                <td class="col-md-5"><?= $nationalite->libNation ?></td>
                <td class="col-md-3"><?= $nationalite->libContinent ?></td>
                <td class="col-md-2">
                    <a href="formNationalite.php?action=Modifier&num=<?= $nationalite->num ?>" class="btn btn-primary"><i class="fas fa-pen"></i></i></a>
                    <a href="#modalSupp" data-message="Voulez vous vraiment supprimer cette nationalité?" data-suppression="valideformNationalite.php?action=Supp&num=<?= $nationalite->num ?>" data-toggle="modal" class="btn btn-danger"><i class="far fa-trash-alt"></i></i></a></td>
            </tr>
        <?php } ?>
    </tbody>
</table>
</div>
<?php require "./footer.php"; ?>