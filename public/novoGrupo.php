<?php session_start(); ?>
<!DOCTYPE html>

<?php include_once '../includes/header.inc.php';
include_once '../includes/menu.inc.php';
?>

<?php
if (isset($_SESSION['descricao'])) {
    $descricao = $_SESSION['descricao'];
}
else {
    $descricao = '';
}    
if (isset($_SESSION['indlucro1'])) {
    $indlucro1 = $_SESSION['indlucro1'];
}
else {
    $indlucro1 = 0;
}    
if (isset($_SESSION['indlucro2'])) {
    $indlucro2 = $_SESSION['indlucro2'];
}
else {
    $indlucro2 = 0;
}    
/*
    $descricao
    $indlucro1
    $indlucro2
  
*/
?>

<div class="row container">
    <form action="../banco_de_dados/createGrupo.php" id="formNovoGrupo" method="post" class="col s12">
        <fieldset class="formulario" style="padding: 15px">
            <!-- <legend><img src="imagens/avatar-1.png" width="50"></legend> -->
            <h5 class="light center">inclusão de Grupo de produto</h5>

            <?php
            if (isset($_SESSION['msg'])) :
                echo $_SESSION['msg'];
                session_unset();
            endif;
            ?>
            <!-- Campo descricao -->
            <div class="row">
                <div class="input-field col s8">
                    <input type="text" name="descricao" id="descricao" value="<?php echo $descricao ?>" maxlength="30" required="" autofocus>
                    <label for="descricao">descricao</label>
                </div>
         
                <!-- Campo indlucro1 -->
                <div class="input-field col s2">
                    <input type="text" name="indlucro1" 
                        id="indlucro1" value="<?php echo number_format($indlucro1, 2, ',', '.'); ?>" 
                        onblur="javascript:this.value=formataValor(this.value);">
                    <label for="indlucro1">% lucro 1</label>

                </div>
                <!-- Campo indlucro2 -->
                <div class="input-field col s2">
                    <input type="text" name="indlucro2" 
                        id="indlucro2" value="<?php echo number_format($indlucro2, 2, ',', '.'); ?>" 
                        onblur="javascript:this.value=formataValor(this.value);">
                    <label for="indlucro2">% lucro 2</label>
                </div>
            </div>

            <!-- Botões -->
            <div class="input-field col s12">
                <input type="submit" value="Cadastrar" class="btn blue">
                <input type="button" value="Limpar" onclick="resetar()" class="btn red">&nbsp&nbsp
                <a href="lista_grupos.php" class="btn red">Voltar</a>
            </div>

        </fieldset>
    </form>
</div>

<script>

    function resetar() {
        var form = document.getElementById("formNovoGrupo");
        var descricao = form.descricao.value;

        var set = confirm("Deseja apagar os dados do formulário?");
        if (set) {
            //alert('Os campos do formulário foram resetados!');
            form.reset();
            form.descricao.focus();
        }
    }
</script>

<?php include_once('../includes/footer.inc.php') ?>