<?php
include "./header.php";
$action = $_GET['action'];// soit ajouter soit modifier
if($action=="Modifier"){
    require_once "./connectiondpdo.inc.php";
    $num = $_GET['num'];
    $req = $Pdo->prepare('select * from nationalite where num= :num');
    $req->setFetchMode(PDO::FETCH_OBJ);
    $req->bindParam(':num', $num);
    $nb = $req->execute();
    $laNationalite = $req->fetch();
}
?>
<div class="container mt-5">
    <h2 Class="pt-3 text-center"><?=$action?> une nationalité</h2>
    <form action="valideformNationalite.php?action=<?=$action?>" class="col-md-6 offset-md-3 border border-primary p-3 rounded" method="post">
        <div class="form-goup">
            <label for="libelle">Libellé</label>
            <input type="text" class="form-control" id="libelle" placeholder="Saisir le libelle" name="libelle" value="<?php if($action=="Modifier"){echo$laNationalite->libelle;} ?>" />
        </div>
        <input type="hidden" id="num" name="num" value="<?php if($action=="Modifier"){ echo $laNationalite->num; } ?>">
        <div class="row pt-2">
            <div class="col"><a href="listeNationalites.php" class="btn btn-primary btn-block">Revenir a la liste</a></div>
            <div class="col"><button type="submit" class="btn btn-success btn-block"><?=$action?></button></div>
        </div>
    </form>
</div>
<?php include "./footer.php"; ?>