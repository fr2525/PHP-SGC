<?php
session_start();
include_once '../includes/header.inc.php';
include_once '../includes/menu.inc.php';
?>

<!--
<div class="row container">
    <div class="col s12">
        <h5 class="light"> Edição de Registros </h5><hr>
    </div>    
</div>  
-->

<?php
include_once('../banco_de_dados/conexao.php');

$id = filter_input(INPUT_GET, 'id', FILTER_SANITIZE_NUMBER_INT);
$_SESSION['id'] = $id;
$querySelect = $link->query("select id,cpf_cnpj,nome,endereco,numero
                        ,complemento,bairro,cidade,estado
                        ,cep,email,celular from tb_clientes where id='$id'");

while ($registros = $querySelect->fetch_assoc()):
    $id = $registros['id'];
    $cpf_cnpj = $registros['cpf_cnpj'];
    $nome = $registros['nome'];
    $endereco = $registros['endereco'];
    $numero = $registros['numero'];
    $complemento = $registros['complemento'];
    $bairro = $registros['bairro'];
    $cidade = $registros['cidade'];
    $estado = $registros['estado'];
    $cep = $registros['cep'];
    $email = $registros['email'];
    $celular = $registros['celular'];
endwhile;

?>

<div class="row container">
    <form action="../banco_de_dados/updateCli.php" id="formEditarCliente" method="post" class="col s12">
        <fieldset class="formulario" style="padding: 15px">
            <!-- <legend><img src="imagens/avatar-1.png" width="50"></legend> -->
            <h5 class="light center">Alteração de Cliente</h5>

            <?php
            if (isset($_SESSION['msg'])):
                echo $_SESSION['msg'];
                session_unset();
            endif;
            ?>


            <div class="row">
                <!-- Campo CPF/CNPJ -->
                <div class="input-field col s3">
                    <!-- <i class="material-icons prefix">fingerprint</i> -->
                    <input type="text" name="cpf_cnpj" id="cpf_cnpj" value="<?php echo $cpf_cnpj ?>" maxlength="20"
                        required="" autofocus>
                    <label for="cpf_cnpj">CPF/CNPJ</label>
                </div>

                <!-- Campo Nome -->
                <div class="input-field col s6">
                    <!-- <i class="material-icons prefix">account_circle</i> -->
                    <input type="text" name="nome" id="nome" value="<?php echo $nome ?>" maxlength="40" required
                        autofocus>
                    <label for="nome">Nome do cliente</label>
                </div>

                <!-- Campo Celular -->
                <div class="input-field col s3">
                    <!-- <i class="material-icons prefix">phone</i> -->
                    <input type="text" name="celular" id="celular" value="<?php echo $celular ?>" maxlength="20"
                        required="">
                    <label for="celular">Tel.Celular</label>
                </div>

            </div>

            <div class="row">
                <!-- Campo endereço -->
                <div class="input-field col s8">
                    <!-- <i class="material-icons prefix">add_location</i> -->
                    <input type="text" name="endereco" id="endereco" value="<?php echo $endereco ?>" maxlength="100">
                    <label for="endereco">Endereço</label>
                </div>
                <!-- Campo numero -->
                <div class="input-field col s1">
                    <!-- <i class="material-icons prefix">add_location</i> -->
                    <input type="text" name="numero" id="numero" value="<?php echo $numero ?>" maxlength="10">
                    <label for="numero">Numero</label>
                </div>
                <!-- Campo complemento -->
                <div class="input-field col s3">
                    <!-- <i class="material-icons prefix">add_location</i> -->
                    <input type="text" name="complemento" id="complemento" value="<?php echo $complemento ?>"
                        maxlength="40">
                    <label for="complemento">Complemento</label>
                </div>
            </div>

            <div class="row">

                <!-- Campo bairro -->
                <div class="input-field col s4">
                    <!-- <i class="material-icons prefix">add_location</i> -->
                    <input type="text" name="bairro" id="bairro" value="<?php echo $bairro ?>" maxlength="60">
                    <label for="bairro">Bairro</label>
                </div>
                <!-- Campo Cidade -->
                <div class="input-field col s4">
                    <!-- <i class="material-icons prefix">add_location</i> -->
                    <input type="text" name="cidade" id="cidade" value="<?php echo $cidade ?>" maxlength="60">
                    <label for="cidade">Cidade</label>
                </div>

                <!-- Campo Estado -->
                <div class="input-field col s1">
                    <!-- <i class="material-icons prefix">add_location</i> -->
                    <input type="text" name="estado" id="estado" value="<?php echo $estado ?>" maxlength="2">
                    <label for="estado">Estado</label>
                </div>
                <!-- Campo CEP -->
                <div class="input-field col s2">
                    <!-- <i class="material-icons prefix">add_location</i> -->
                    <input type="text" name="CEP" id="CEP" value="<?php echo $cep ?>" maxlength="9">
                    <label for="CEP">CEP</label>
                </div>
            </div>


            <div class="row">
                <!-- Campo email -->
                <div class="input-field col s12">
                    <i class="material-icons prefix">email</i>
                    <input type="text" name="email" id="email" value="<?php echo $email ?>" maxlength="100" required="">
                    <label for="email">E-mail</label>
                </div>
            </div>


            <!-- Botões -->
            <div class="input-field col s12">
                <input type="submit" value="Alterar" class="btn blue">
                <a href="lista_clientes.php" class="btn red">Voltar</a>
            </div>

        </fieldset>
    </form>
</div>

<?php include_once('../includes/footer.inc.php') ?>