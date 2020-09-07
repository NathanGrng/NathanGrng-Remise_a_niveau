<div class="container mt-5">
    <h2 Class="pt-3 text-center"><?=$mode?> une continent</h2>
    <form action="index.php?uc=continent&action=validForm" class="col-md-6 offset-md-3 border border-primary p-3 rounded" method="post">
        <div class="form-goup">
            <label for="libelle">Libelle</label>
            <input type="text" class="form-control" id="libelle" placeholder="Saisir le libelle" name="libelle" value="<?php if($mode=="Modifier"){echo $contient->getLibelle();} ?>" />
        </div>
        <input type="hidden" id="num" name="num" value="<?php if($mode=="Modifier"){ echo $continent->getNum(); } ?>">
        <div class="row pt-2">
            <div class="col"><a href="index.php?uc=continent&action=list" class="btn btn-primary btn-block">Revenir a la liste</a></div>
            <div class="col"><button type="submit" class="btn btn-success btn-block"><?=$mode?></button></div>
        </div>
    </form>
</div>