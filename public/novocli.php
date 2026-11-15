<?php session_start()  ?>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<?php include_once('../includes/header.inc.php');
include_once('../includes/menu.inc.php');

if (isset($_SESSION['cpf_cnpj'])) :
  $cpf_cnpj = $_SESSION['cpf_cnpj'];
else :
  $cpf_cnpj = "";
endif;
if (isset($_SESSION['nome'])) :
  $nome = $_SESSION['nome'];
else :
  $nome = "";
endif;
if (isset($_SESSION['endereco'])) :
  $endereco = $_SESSION['endereco'];
else :
  $endereco = "";
endif;
if (isset($_SESSION['numero'])) :
  $numero = $_SESSION['numero'];
else :
  $numero = "";
endif;
if (isset($_SESSION['complemento'])) :
  $complemento = $_SESSION['complemento'];
else :
  $complemento = "";
endif;
if (isset($_SESSION['bairro'])) :
  $bairro = $_SESSION['bairro'];
else :
  $bairro = "";
endif;
if (isset($_SESSION['cidade'])) :
  $cidade = $_SESSION['cidade'];
else :
  $cidade = "";
endif;
if (isset($_SESSION['estado'])) :
  $estado = $_SESSION['estado'];
else :
  $estado = "";
endif;
if (isset($_SESSION['cep'])) :
  $cep = $_SESSION['cep'];
else :
  $cep = "";
endif;

if (isset($_SESSION['email'])) :
  $email = $_SESSION['email'];
else :
  $email = "";
endif;
if (isset($_SESSION['celular'])) :
  $celular = $_SESSION['celular'];
else :
  $celular = "";
endif;

?>
<div class="container">
  <div class="d-flex justify-content-between align-items-center bg-light p-3 mb-4">
    <!-- Conteúdo do lado esquerdo (um texto, por exemplo) -->
    <div>
      <span class="fw-bold">Novo Cliente</span>
    </div>
  </div>
  <div class="container border"  style="background-color: #e0d9c0;">
    <form action="../banco_de_dados/createcli.php" id="formCliente" method="post">

      <div class="row mb-4">
        <!-- Campo Nome -->
        <div class="col-6">
          <label for="nome" class="form-label">Nome</label>
          <input type="text" class="form-control" id="nome" placeholder="Seu nome">
        </div>

        <!-- Campo CPF  -->
        <div class="col-3">
          <label for="cpf" class="form-label">CPF</label>
          <input type="text" class="form-control" id="cpf" placeholder="CPF">
        </div>

        <!-- Campo Celular -->
        <div class="col-3">
          <label for="celular" class="form-label">Celular</label>
          <input type="text" class="form-control" id="celular" placeholder="Celular">
        </div>
      </div>

      <div class="row mb-4">
        <!-- Campo Endereço -->
        <div class="col-9">
          <label for="endereco" class="form-label">Endereço</label>
          <input type="text" class="form-control" id="endereco" placeholder="Seu endereço">
        </div>

        <!-- Campo Número  -->
        <div class="col-3">
          <label for="numero" class="form-label">No.</label>
          <input type="text" class="form-control" id="numero" placeholder="No.">
        </div>
      </div>

      <!-- Complemento / cidade / UF / CEP -->
      <div class="row mb-4">
        <!-- Campo complemento -->
        <div class="col-3">
          <label for="complemento" class="form-label">Complemento</label>
          <input type="text" class="form-control" id="complemento" placeholder="Complemento">
        </div>
        <!-- Campo bairro -->
        <div class="col-3">
          <label for="bairro" class="form-label">Bairro</label>
          <input type="text" class="form-control" id="bairro" placeholder="Bairro">
        </div>

        <!-- Campo Cidade  -->
        <div class="col-3">
          <label for="cidade" class="form-label">Cidade</label>
          <input type="text" class="form-control" id="cidade" placeholder="Cidade">
        </div>
        <!-- Campo Estado  -->
        <div class="col-1">
          <label for="estado" class="form-label">Estado</label>
          <input type="text" class="form-control" id="estado" placeholder="UF">
        </div>
        <!-- Campo Cep  -->
        <div class="col-2">
          <label for="cep" class="form-label">Cep</label>
          <input type="text" class="form-control" id="cep" placeholder="CEP">
        </div>

      </div>

      <div class="row mb-4">
        <!-- Campo Email ocupando 8 colunas -->
        <div class="col-8">
          <label for="email" class="form-label">Email</label>
          <input type="email" class="form-control" id="email" placeholder="nome@exemplo.com">
        </div>

      </div>
      <div class="container mb-4">
        <button type="submit" class="btn btn-primary">Enviar</button>
        <button type="button" value="Limpar" onclick="resetar()" class="btn btn-light">Limpar</button>
        <button class="btn btn-link" onclick="window.location='../public/lista_clientes.php'">Voltar</button>
        
      </div>
    </form>
  </div>
</div>

<script>
  function resetar() {
    var form = document.getElementById("formCliente");
    var cpf = form.cpf.value;

    var set = confirm("Deseja apagar os dados do formulário?");
    if (set) {
      //alert('Os campos do formulário foram resetados!');
      form.reset();
      form.cpf.focus();
    }
  }
</script>

<?php include_once('../includes/footer.inc.php');
?>