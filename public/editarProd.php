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

/*

-- --------------------------------------------------------

--
-- Estrutura para tabela  tb_produtos 
--

CREATE TABLE  tb_produtos  (
   id     ,
   codbar      ,
   codgrupo    
   descricao   ,
   descresu    ,
   estinicial , 
   estatual   , 
   minimo     , 
   unidade     ,
   codfor     , 
   indlucro   , 
   prevenda1  , 
   prevenda2  , 
   prevenda3  , 
   prevenda4  , 
   prevenda5  , 
   dtultvenda , 
   dtcadastro , 
   Ativo      ,
   PRD_CFO    ,
   PRD_IPI    , 
   PRD_SIT    ,
   PRD_CLF    ,
   PRD_QTU    , 
   PRD_DCA    , 
   PRD_VLA    , 
   PRD_DCM    , 
   PRD_ICM    , 
   PRD_DCP    , 
   Precocusto , 
   PRD_TPP    ,
   operador   ,
   datatual   , 
   dtultcomp  , 
   codigo_m    

*/

$id = filter_input(INPUT_GET, 'id', FILTER_SANITIZE_NUMBER_INT);
$_SESSION['id'] = $id;
$querySelect = $link->query("select id,codbar,codgrupo,descricao,descresu,
   estinicial,estatual,minimo,unidade,codfor,indlucro,prevenda1,prevenda2,  
   dtultvenda,dtcadastro,Ativo,PRD_CFO,PRD_IPI,PRD_CLF,PRD_ICM,Precocusto
   from tb_produtos where  id='$id'");

while ($registros = $querySelect->fetch_assoc()) :
    $id = $registros[' id'];
    $descricao  = $registros['descricao'];
    $indlucro1 = $registros['indlucro1'];
    $indlucro2 = $registros['indlucro2'];
endwhile;

?>

<div class="row container">
    <form action="../banco_de_dados/updateGrupo.php" id="formEditarGrupo" method="post" class="col s12">
        <fieldset class="formulario" style="padding: 15px">
            <legend><img src="imagens/avatar-1.png" width="50"></legend>
            <h5 class="light center">Alteração de Grupo de produto</h5>

            <?php
            if (isset($_SESSION['msg'])) :
                echo $_SESSION['msg'];
                session_unset();
            endif;
            ?>
            <!-- Campo descricao/CNPJ -->
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
                <input type="submit" value="Alterar" class="btn blue">
                <a href="lista_grupos.php" class="btn red">Voltar</a>
            </div>

        </fieldset>
    </form>
</div>

<?php include_once('../includes/footer.inc.php') ?>