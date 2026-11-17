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
$querySelect = $link->query("select id,cpf_cnpj,nome,endereco,bairro,cidade,estado,cep,email,telefone,celular from tb_fornecedores where id='$id'");

while ($registros = $querySelect->fetch_assoc()):
    $id = $registros['id'];
    $cpf_cnpj = $registros['cpf_cnpj'];
    $nome = $registros['nome'];
    $endereco = $registros['endereco'];
    $bairro = $registros['bairro'];
    $cidade = $registros['cidade'];
    $estado = $registros['estado'];
    $cep = $registros['cep'];
    $email = $registros['email'];
    $telefone = $registros['telefone'];
    $celular = $registros['celular'];
endwhile;

?>

<div class="row container">
    <form action="../banco_de_dados/updateFor.php" id="formEditarForne" method="post" class="col s12">
        <fieldset class="formulario" style="padding: 15px">
            <!-- <legend><img src="imagens/avatar-1.png" width="50"></legend>  -->
            <h5 class="light center">Alteração de Fornecedor</h5>

            <?php
            if (isset($_SESSION['msg'])):
                echo $_SESSION['msg'];
                session_unset();
            endif;
            ?>

            <!-- Campo cpf/CNPJ -->
            <div class="row">
                <div class="input-field col s3">
                    <!-- <i class="material-icons prefix">fingerprint</i> -->
                    <input type="text" name="cpf_cnpj" id="cpf_cnpj" value="<?php echo $cpf_cnpj ?>" maxlength="20"
                        required="" autofocus>
                    <label for="cpf_cnpj">CPF/CNPJ</label>
                </div>

                <!-- Campo Nome -->
                <div class="input-field col s9">
                    <!-- <i class="material-icons prefix">account_circle</i> -->
                    <input type="text" name="nome" id="nome" value="<?php echo $nome ?>" maxlength="60" required
                        autofocus>
                    <label for="nome">Nome do fornecedor</label>
                </div>
            </div>

            <!-- Campo endereço -->
            <div class="row">
                <div class="input-field col s6">
                    <!-- <i class="material-icons prefix">add_location</i> -->
                    <input type="text" name="endereco" id="endereco" value="<?php echo $endereco ?>" maxlength="100">
                    <label for="endereco">Endereço</label>
                </div>

                <!-- Campo bairro -->
                <div class="input-field col s6">
                    <!-- <i class="material-icons prefix">add_location</i> -->
                    <input type="text" name="bairro" id="bairro" value="<?php echo $bairro ?>" maxlength="60">
                    <label for="bairro">Bairro</label>
                </div>
            </div>
            <!-- Campo Cidade -->
            <div class="row">
                <div class="input-field col s5">
                    <!-- <i class="material-icons prefix">add_location</i>-->
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

                <!-- Campo Telefone -->
                <div class="input-field col s2">
                    <!-- <i class="material-icons prefix">phone</i> -->
                    <input type="text" name="telefone" id="telefone" value="<?php echo $telefone ?>" maxlength="20">
                    <label for="telefone">Telefone</label>
                </div>

                <!-- Campo Celular -->
                <div class="input-field col s2">
                    <!-- <i class="material-icons prefix">phone</i> -->
                    <input type="text" name="celular" id="celular" value="<?php echo $celular ?>" maxlength="20">
                    <label for="celular">Tel.Celular</label>
                </div>
            </div>

            <!-- Campo email -->
            <div class="row">
                <div class="input-field col s12">
                    <!-- <i class="material-icons prefix">email</i> -->
                    <input type="text" name="email" id="email" value="<?php echo $email ?>" maxlength="100" required="">
                    <label for="email">E-mail</label>
                </div>
            </div>

            <!-- Botões -->
            <div class="row">
                <div class="input-field col s12">
                    <input type="submit" value="Alterar" class="btn blue">
                    <a href="lista_fornece.php" class="btn red">Cancelar/Voltar</a>
                </div>
            </div>
        </fieldset>
    </form>
</div>

<?php include_once('../includes/footer.inc.php') ?>