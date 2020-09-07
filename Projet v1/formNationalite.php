<?php
require "./header.php";
require_once "./connectiondpdo.inc.php";
$action = $_GET['action'];// soit ajouter soit modifier
if($action=="Modifier"){
    $num = $_GET['num'];
    $req = $Pdo->prepare('select * from nationalite where num= :num');
    $req->setFetchMode(PDO::FETCH_OBJ);
    $req->bindParam(':num', $num);
    $nb = $req->execute();
    $laNationalite = $req->fetch();
}
    //liste des continents
    $reqContinent = $Pdo->prepare('select * from continent');
    $reqContinent->setFetchMode(PDO::FETCH_OBJ);
    $reqContinent->execute();
    $lesContinents=$reqContinent->fetchAll();
?>
<div class="container mt-5">
    <h2 Class="pt-3 text-center"><?=$action?> une nationalité</h2>
    <form action="valideformNationalite.php?action=<?=$action?>" class="col-md-6 offset-md-3 border border-primary p-3 rounded" method="post">
        <div class="form-goup">
            <label for="libelle">Libelle</label>
            <input type="text" class="form-control" id="libelle" placeholder="Saisir le libelle" name="libelle" value="<?php if($action=="Modifier"){echo$laNationalite->libelle;} ?>" />
        </div>
        <div class="form-goup">
            <label for="continent">Continent</label>
        <select name="Continent">
            <?php foreach($lesContinents as $continent){
                $selection = $continent->id == $laNationalite->numContinent?'selected':'';
               echo '<option value="'.$continent->id.'"'.$selection.'>'.$continent->libelle.'</option>';
            }?>
        </select>
        </div>
        <input type="hidden" id="num" name="num" value="<?php if($action=="Modifier"){ echo $laNationalite->num; } ?>">
        <div class="row pt-2">
            <div class="col"><a href="listeNationalites.php" class="btn btn-primary btn-block">Revenir a la liste</a></div>
            <div class="col"><button type="submit" class="btn btn-success btn-block"><?=$action?></button></div>
        </div>
    </form>
</div>
<?php require "./footer.php"; ?>