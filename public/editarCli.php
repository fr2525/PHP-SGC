<?php
session_start(); ?>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<?php include_once '../includes/header.inc.php';
include_once '../includes/menu.inc.php';

include_once('../banco_de_dados/conexao.php');

$id = filter_input(INPUT_GET, 'id', FILTER_SANITIZE_NUMBER_INT);
$_SESSION['id'] = $id;
$querySelect = $link->query("select id,cpf_cnpj,nome,endereco,numero,complemento,bairro,cidade,estado,cep,email,celular from tb_clientes where id='$id'");

while ($registros = $querySelect->fetch_assoc()) :
    $id = $registros['id'];
    $cpf_cnpj  = $registros['cpf_cnpj'];
    $nome = $registros['nome'];
    $endereco  = $registros['endereco'];
    $numero  = $registros['numero'];
    $complemento  = $registros['complemento'];
    $bairro  = $registros['bairro'];
    $cidade  = $registros['cidade'];
    $estado  = $registros['estado'];
    $cep = $registros['cep'];
    $email = $registros['email'];
    $celular = $registros['celular'];
endwhile;

?>
<div class="container">
    <div class="d-flex justify-content-between align-items-center bg-light p-3 mb-4">
        <!-- Conteúdo do lado esquerdo (um texto, por exemplo) -->
        <div>
            <span class="fw-bold">Edição de Cliente</span>

            <?php
            if (isset($_SESSION['msg'])) :
                echo $_SESSION['msg'];
                session_unset();
            endif;
            ?>
        </div>
    </div>
    <div class="container border" style="background-color: #e0d9c0;">
        <form action="../banco_de_dados/updateCli.php" id="formEditarCliente" method="post">

            <div class="row mb-4">
                <!-- Campo Nome -->
                <div class="col-6">
                    <label for="nome" class="form-label">Nome</label>
                    <input type="text" class="form-control" name="nome" id="nome" value="<?php echo $nome ?>" maxlength="60" required autofocus>
                </div>

                <!-- Campo CPF/CNPJ -->
                <div class="input-field col-3">
                    <label for="cpf_cnpj" class="form-label">CPF</label>
                    <input type="text" class="form-control" name="cpf_cnpj" id="cpf_cnpj" value="<?php echo $cpf_cnpj ?>" maxlength="19" required="">
                </div>

                <!-- Campo Celular -->
                <div class="input-field col-3">
                    <label for="celular">Celular</label>
                    <input type="text" class="form-control" name="celular" id="celular" value="<?php echo $celular ?>" maxlength="20" required="">

                </div>
            </div>
            <div class="row mb-4">
                <!-- Campo Endereço -->
                <div class="col-9">
                    <label for="endereco" class="form-label">Endereço</label>
                    <input type="text" class="form-control" name="endereco" id="endereco" value="<?php echo $endereco ?>" maxlength="60">
                </div>

                <!-- Campo Número  -->
                <div class="col-3">
                    <label for="numero" class="form-label">No.</label>
                    <input type="text" class="form-control" name="numero" id="numero" value="<?php echo $numero ?>" maxlength="60">
                </div>
            </div>

            <!-- Complemento / cidade / UF / CEP -->
            <div class="row mb-4">
                <!-- Campo complemento -->
                <div class="col-4">
                    <label for="complemento" class="form-label">Complemento</label>
                    <input type="text" class="form-control" id="complemento" name="complemento" value="<?php echo $complemento ?>" maxlength="60">
                </div>
                <!-- Campo Cidade  -->
                <div class="col-5">
                    <label for="cidade" class="form-label">Cidade</label>
                    <input type="text" class="form-control" id="cidade" name="cidade" value="<?php echo $cidade ?>" maxlength="30">
                </div>
                <!-- Campo Estado  -->
                <div class="col-1">
                    <label for="estado" class="form-label">Estado</label>
                    <input type="text" class="form-control" id="estado" name="estado" value="<?php echo $estado ?>" maxlength="2">
                </div>
                <!-- Campo Cep  -->
                <div class="col-2">
                    <label for="cep" class="form-label">Cep</label>
                    <input type="text" class="form-control" id="cep" name="cep" value="<?php echo $cep ?>" maxlength="9">
                </div>

            </div>
            <!-- Campo email -->
            <div class="input-field col s12">
                <!-- <i class="material-icons prefix">email</i> -->
                <label for="email">E-mail</label>
                <input type="text" class="form-control" name="email" id="email" value="<?php echo $email ?>" maxlength="100" required="">
                
            </div>
            <!-- Botões -->
            <div class="container mb-4 mt-4">
                <button type="submit" class="btn btn-primary">Alterar</button>
                <a href="lista_clientes.php"><button class="btn btn-link">Voltar</button></a>
            </div>

            </fieldset>
        </form>
    </div>

    <?php include_once('../includes/footer.inc.php') ?>