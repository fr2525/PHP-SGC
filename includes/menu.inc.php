<!-- Dropdown Structure -->
<ul id="dropdown1" class="dropdown-content">
    <li></li>
    <li><a href="lista_clientes.php"> Clientes</a></li>
    <li><a href="lista_fornece.php"> Fornecedores</a></li>
    <li class="divider"></li>
    <li><a href="lista_grupos.php"> Grupos</a></li>
    <li><a href="lista_produtos.php"> Produtos</a></li>
    <li class="divider"></li>
    <li><a href="lista_unidades.php"> Tipo Unidade</a></li>
    <li><a href="lista_tiposvenda.php"> Tipo Venda</a></li>
    <li><a href="lista_tiposmov.php"> Tipo Movimentação</a></li>
</ul>    

<ul id="dropdown2" class="dropdown-content">
    <li><a href="lista_pedidos.php"> Orçamentos</a></li>
    <li><a href="lista_vendas.php"> Vendas</a></li>
    <li><a href="lista_cancelvenda.php"> Cancelar Venda</a></li>
    <li><a href="lista_compras.php"> Compras</a></li>
    <li><a href="lista_outrasmov.php"> Outras movim</a></li>
    <li class="divider"></li>
    <li><a href="lista_apagar.php"> Contas a pagar</a></li>
    <li><a href="lista_areceber.php"> Contas a receber</a></li>
    <li class="divider"></li>
    <li><a href="lista_despesas.php"> Despesas</a></li>
    <li><a href="lista_outrasmovim.php"> Outras movimentações</a></li>
</ul>

<ul id="dropdown3" class="dropdown-content">
    <li><a href="lista_prodmaisvend.php"> Produtos + vendidos </a></li>
    <li><a href="lista_prodmenosvend.php"> Produtos - vendidos </a></li>
</ul>

<ul id="dropdown4" class="dropdown-content">    
    <li><a href="lista_vendas.php"> Consulta Vendas</a></li>
</ul>

<nav class="purple">
    <div class="nav-wrapper">
        <div class="brand-logo light">Gestão Comercial</div>
        <ul class="right">
            <li><a href="index.php"><i class="material-icons tiny">home</i></a></li>
            <!-- Dropdown Trigger -->
            <li style="background-color: darkseagreen";><a class="dropdown-trigger" href="#!" data-target="dropdown1">Cadastros<i class="material-icons right">arrow_drop_down</i></a></li>
            <li style="background-color: darkseagreen";><a class="dropdown-trigger" href="#!" data-target="dropdown2">Movimentações<i class="material-icons right">arrow_drop_down</i></a></li>
            <li style="background-color: darkseagreen";><a class="dropdown-trigger" href="#!" data-target="dropdown3">Consulta Produtos<i class="material-icons right">arrow_drop_down</i></a></li>
            <li style="background-color: darkseagreen";><a class="dropdown-trigger" href="#!" data-target="dropdown4">Consulta Vendas<i class="material-icons right">arrow_drop_down</i></a></li>
            <li style="background-color: darkseagreen";><a href="admin.php"><i class="material-icons right">supervisor_account</i> Administração </a></li> 
        </ul>
    </div>
</nav>