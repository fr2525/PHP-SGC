<?php include_once('../includes/header.inc.php')
?>

<?php include_once('../includes/menu.inc.php')

// id,nome,usuario,senha,celular,nivel,comissao,salario
?>

<div class="container text-center">
    <div class="d-flex justify-content-between align-items-center bg-light p-3">
        <!-- Conteúdo do lado esquerdo (um texto, por exemplo) -->
        <div>
            <span class="fw-bold">Lista de Usuarios</span>
        </div>
        <!-- Botão do lado direito -->
        <div>
            <a href="novousu.php" class="btn btn-primary" tabindex="-1" role="button" aria-disabled="true">Novo</a>
        </div>
    </div>
    <div class="col-12">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Nome</th>
                    <th>Usuario</th>
                    <th>e-mail</th>
                    <th>Celular</th>
                    <th>Nível</th>
                    <th>Ativo</th>
                    <th>Ações</th>
                </tr>
            </thead>
            <tbody>
                <?php include_once('../banco_de_dados/readUsu.php'); ?>
            </tbody>
        </table>
    </div>

</div>

<?php include_once('../includes/footer.inc.php')
?>