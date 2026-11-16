<?php include_once('../banco_de_dados/conexao.php');

$sqlTotal = "SELECT nsu FROM tb_vendas";
$qrTotal = $link->query($sqlTotal);
$numTotalVendas = $qrTotal->num_rows;

$sqlTotal = "SELECT id_compra FROM tb_compras";
$qrTotal = $link->query($sqlTotal);
$numTotalCompras = $qrTotal->num_rows;

$sqlTotal = "SELECT id FROM tb_clientes";
$qrTotal = $link->query($sqlTotal);
$numTotalCli = $qrTotal->num_rows;

$sqlTotal = "SELECT id FROM tb_fornecedores";
$qrTotal = $link->query($sqlTotal);
$numTotalFor = $qrTotal->num_rows;

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
</head>

<body>
    <div class="row" style="width: 100%; padding-top: 40px;">
        <div class="card text-bg-danger mb-3" style="max-width: 18rem; margin-left: 100px; margin-right: 100px">
            <div class="card-header">Vendas</div>
            <div class="card-body">
                <h5 class="card-title">Vendas</h5>
                <p class="card-text">
                <h3><?php echo $numTotalVendas; ?></h3>
                </p>
            </div>
        </div>
        <div class="card text-bg-primary mb-3" style="max-width: 18rem; margin-right: 100px">
            <div class="card-header">Compras</div>
            <div class="card-body">
                <h5 class="card-title">Compras</h5>
                <p class="card-text">
                <h3><?php echo $numTotalCompras; ?></h3>
                </p>
            </div>
        </div>
      
    </div>
    <div class="row" style="width: 100%; padding-top: 40px;"">

        <div class="card text-bg-warning mb-3" style="max-width: 18rem; margin-left: 100px; margin-right: 100px">
            <div class="card-header">Cadastro</div>
            <div class="card-body">
                <h5 class="card-title">Clientes cadastrados</h5>
                <p class="card-text">
                <h3><?php echo $numTotalCli; ?></h3>
                </p>
            </div>
        </div>

        <div class="card text-bg-info mb-3" style="max-width: 18rem; margin-right: 100px">
            <div class="card-header">Cadastro</div>
            <div class="card-body">
                <h5 class="card-title">Fornecedores</h5>
                <p class="card-text">
                <h3><?php echo $numTotalFor; ?></h3>
                </p>
            </div>
        </div>
        <div class="card text-bg-light mb-3" style="max-width: 18rem; margin-right: 100px">
            <div class="card-header">Cadastro</div>
            <div class="card-body">
                <h5 class="card-title">Filamentos</h5>
                <p class="card-text">
                <h3><?php echo $numTotalFila; ?></h3>
                </p>
            </div>
        </div>
        <div class="card text-bg-dark mb-3" style="max-width: 18rem;">
            <div class="card-header">Cadastro</div>
            <div class="card-body">
                <h5 class="card-title">Impressoras</h5>
                <p class="card-text">
                <h3><?php echo $numTotalImpre;  ?></h3>
                </p>
            </div>
        </div>
    </div>
</body>

</html>