<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid" style="background-color: #f0d684;">
    <a class="navbar-brand" href="#">Sistema de Gestão Comercial</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.php">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="lista_pedidos.php">Vendas</a>
        </li>
        <!-- Cadastros -->
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Cadastros
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="lista_clientes.php">Clientes</a></li>
            <li><a class="dropdown-item" href="lista_fornece.php">Fornecedores</a></li>
            <li><a class="dropdown-item" href="lista_operadores.php">Operadores</a></li>
            <li><a class="dropdown-item" href="lista_grupos.php">Grupos</a></li>
            <li><a class="dropdown-item" href="lista_produtos.php">Produtos</a></li>
            <li><a class="dropdown-item" href="lista_unidades.php">Unidades</a></li>
            <li><a class="dropdown-item" href="lista_tipos_venda.php">Tipos de venda</a></li>
            <li><a class="dropdown-item" href="lista_tipos_movim.php">Tipos movimentação</a></li>
          </ul>
        </li>
        <!-- Movimentações -->
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Movimentações
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="lista_vendas.php">Vendas</a></li>
            <li><a class="dropdown-item" href="lista_compras.php">Compras</a></li>
            <li><a class="dropdown-item" href="lista_filamentos.php">Ajuste de estoque</a></li>
            <li><a class="dropdown-item" href="lista_impressoras.php">Produtos</a></li>
          </ul>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="admin.php">Administração</a>
        </li>
      </ul>
    </div>
  </div>
</nav>