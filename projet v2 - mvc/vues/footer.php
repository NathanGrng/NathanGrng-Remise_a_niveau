<!-- Modal -->
<div id="modalSupp" class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Suppression</h5>
      </div>
      <div class="modal-body" id="modalbody">

      </div>
      <div class="modal-footer">
        <a href="" id="btnSupp" class="btn btn-primary">Oui</a>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Non</button>
      </div>
    </div>
  </div>
</div>
<footer class="container fixed-bottom">
  <p>&copy; Rito 2020-2021</p>
</footer>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/de561d110d.js" crossorigin="anonymous"></script>
<script type="text/javascript">
  $("a[data-suppression]").click(function() {
    var lien = $(this).attr("data-suppression"); //on recupere le lien du bouton present dans "data-suppression"
    var message =$(this).attr("data-message"); //on recupere le lien du bouton present dans "data-message"
    $("#btnSupp").attr("href", lien); //on ecrit le lien sur le href du bon "oui" de la modal
    $("#modalbody").text(message) //on ecrit le lien sur le href du bon "oui" de la modal
  });
</script>

</html>
<?php
ob_end_flush();
?>