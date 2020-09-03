<?php
include "./header.php";
require_once "./connectiondpdo.inc.php";
$req = $Pdo->prepare('SELECT * from nationalite');
$req->setFetchMode(PDO::FETCH_OBJ);
$req->execute();
$lesNationalites = $req->fetchAll();

if(!empty($_SESSION['message'])){
    $mesMessages=$_SESSION['message'];
    foreach($mesMessages as $key=>$message){
        echo '<div class="container pt-5"><div class="alert alert-'.$key.' alert-dismissible fade show" role="alert">'.$message.' <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button></div></div>';
    }
    $_SESSION['message']=[""];
}
?>
<div class="container mt-5">
    <div class="row pt-3">
        <div class="col-9">
            <h2>Listes des nationalités</h2>
        </div>
        <div class="col-3"><a href="formNationalite.php?action=Ajouter" class="btn btn-success"><i class="fas fa-plus-circle"></i></i> Ajouter un nationalite</a></div>
    </div>
    <table class="table table-hover">
        <thead>
            <tr class="d-flex">
                <th scope="col" class="col-md-2">Numéro</th>
                <th scope="col" class="col-md-8">libellé</th>
                <th scope="col" class="col-md-2">Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($lesNationalites as $nationalite) { ?>
                <tr class="d-flex">
                    <td class="col-md-2"><?= $nationalite->num ?></td>
                    <td class="col-md-8"><?= $nationalite->libelle ?></td>
                    <td class="col-md-2">
                    <a href="formNationalite.php?action=Modifier&num=<?= $nationalite->num ?>" class="btn btn-primary"><i class="fas fa-pen"></i></i></a>
                    <a href="#modalSupp" data-message="Voulez vous vraiment supprimer cette nationalité?" data-suppression="valideformNationalite.php?action=Supp&num=<?= $nationalite->num ?>" data-toggle="modal" class="btn btn-danger"><i class="far fa-trash-alt"></i></i></a></td>
                </tr>
            <?php } ?>
        </tbody>
    </table>
</div>
<?php include "./footer.php"; ?>