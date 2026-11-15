<?php include_once('../includes/header.inc.php')
?>

<?php include_once('../includes/menu.inc.php')

?>

<div class="container text-center">
    <div class="d-flex justify-content-between align-items-center bg-light p-3">
        <!-- Conteúdo do lado esquerdo (um texto, por exemplo) -->
        <div>
            <span class="fw-bold">Pedidos</span>
        </div>
        <!-- Botão do lado direito -->
        <div>
            <a href="novopedido.php" class="btn btn-primary" tabindex="-1" role="button" aria-disabled="true">Novo</a>
        </div>
    </div>
    <div class="col-12">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Cliente</th>
                    <th>Projeto</th>
                    <th  style='text-align: right'>Quantidade</th>
                    <th  style='text-align: right'>Preço Unit.</th>
                    <th  style='text-align: right'>Valor Total</th>
                    <th>Dta.Compra</th>
                    <th>Dta.Prevista</th>
                    <th>Status</th>
                    <th>Editar</th>
                    <th>Excluir</th>
                    
                </tr>
            </thead>
            <tbody>
                <?php include_once('../banco_de_dados/readpedido.php'); ?>
            </tbody>
        </table>
    </div>
</div>

</div>

<?php include_once('../includes/footer.inc.php')
?>