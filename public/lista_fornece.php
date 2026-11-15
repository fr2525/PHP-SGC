<?php include_once('../includes/header.inc.php')
?>
<?php include_once('../includes/menu.inc.php')
?>


<div class="container text-center">
    <div class="d-flex justify-content-between align-items-center bg-light p-3">
        <!-- Conteúdo do lado esquerdo (um texto, por exemplo) -->
        <div>
            <span class="fw-bold">Lista de Fornecedores</span>
        </div>

        <!-- Botão do lado direito -->
        <div>
            <a href="novofor.php" class="btn btn-primary" tabindex="-1" role="button" aria-disabled="true">Novo</a>
        </div>
    </div>

    <div class="col-12">
    <table class="table table-striped">
      <thead>
        <tr>
          <th>CPF/CNPJ</th>
          <th>Nome</th>
          <th>Email</th>
          <th>Celular</th>
          <th>Ações</th>


        </tr>
      </thead>
      <tbody>
        <?php include_once('../banco_de_dados/readfor.php'); ?>
      </tbody>
    </table>
  </div>
</div>

<?php include_once('../includes/footer.inc.php')
?>