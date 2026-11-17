<?php session_start() ?>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<?php include_once('../includes/header.inc.php');
include_once('../includes/menu.inc.php');

if (isset($_SESSION['cpf_cnpj'])):
    $cpf_cnpj = $_SESSION['cpf_cnpj'];
else:
    $cpf_cnpj = "";
endif;
if (isset($_SESSION['nome'])):
    $nome = $_SESSION['nome'];
else:
    $nome = "";
endif;
if (isset($_SESSION['endereco'])):
    $endereco = $_SESSION['endereco'];
else:
    $endereco = "";
endif;
if (isset($_SESSION['numero'])):
    $numero = $_SESSION['numero'];
else:
    $numero = "";
endif;
if (isset($_SESSION['complemento'])):
    $complemento = $_SESSION['complemento'];
else:
    $complemento = "";
endif;
if (isset($_SESSION['bairro'])):
    $bairro = $_SESSION['bairro'];
else:
    $bairro = "";
endif;
if (isset($_SESSION['cidade'])):
    $cidade = $_SESSION['cidade'];
else:
    $cidade = "";
endif;
if (isset($_SESSION['estado'])):
    $estado = $_SESSION['estado'];
else:
    $estado = "";
endif;
if (isset($_SESSION['cep'])):
    $cep = $_SESSION['cep'];
else:
    $cep = "";
endif;

if (isset($_SESSION['email'])):
    $email = $_SESSION['email'];
else:
    $email = "";
endif;
if (isset($_SESSION['celular'])):
    $celular = $_SESSION['celular'];
else:
    $celular = "";
endif;

?>

<div class="row container">
    <form action="../banco_de_dados/createcli.php" id="formCliente" method="post" class="col s12">
        <fieldset class="formulario" style="padding: 15px">
            <!-- <legend><img src="imagens/avatar-1.png" width="50"></legend>  -->
            <h5 class="light center">Cadastro de Clientes</h5>

            <?php
            if (isset($_SESSION['msg'])):
                echo $_SESSION['msg'];
                session_unset();
            endif;
            ?>

            <div class="row">
                <!-- Campo CPF -->
                <div class="input-field col s3">
                    <!--                   <i class="material-icons prefix">fingerprint</i> -->
                    <input type="text" name="cpf_cnpj" value="<?php echo $cpf_cnpj ?>" id="cpf_cnpj" maxlength="20"
                        required="" autofocus>
                    <label for="cpf_cnpj">CPF/CNPJ</label>
                </div>

                <!-- Campo Nome -->
                <div class="input-field col s6">
                    <!--                    <i class="material-icons prefix">account_circle</i> -->
                    <input type="text" name="nome" id="nome" value="<?php echo $nome ?>" maxlength="40" required="">
                    <label for="nome">Nome do cliente</label>
                </div>

                <!-- Campo Celular -->
                <div class="input-field col s3">
                    <i class="material-icons prefix"></i>
                    <input type="text" name="celular" value="<?php echo $celular ?>" id="celular" maxlength="20"
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
                    <!-- <i class="material-icons prefix">email</i>  -->
                    <input type="text" name="email" value="<?php echo $email ?>" id="email" maxlength="100" required="">
                    <label for="email">E-mail</label>
                </div>
            </div>


            <!-- Botões -->
            <div class="input-field col s12">
                <input type="submit" value="Cadastrar" class="btn blue">&nbsp&nbsp
                <input type="button" value="Limpar" onclick="resetar()" class="btn red">&nbsp&nbsp
                <a href="lista_clientes.php" class="btn purple">Voltar</a>
            </div>

        </fieldset>
    </form>
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