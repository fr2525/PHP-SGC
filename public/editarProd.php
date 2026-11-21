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
$str_sql = "select a.id,a.descricao as descricao,a.codbar,a.codgrupo, b.descricao as descgrupo,a.descresu
                            ,a.estinicial,a.estatual,a.minimo,a.unidade,a.codfor,c.nome as nomefor
                            ,a.indlucro,a.prevenda1,a.prevenda2, dtultvenda,dtcadastro
                            ,Ativo,PRD_CFO,PRD_IPI,PRD_CLF,PRD_ICM,Precocusto 
                            from tb_produtos a, tb_grupos b, tb_fornecedores c 
                            where a.id='$id' and a.codgrupo = b.id AND a.codfor = c.id;";

//echo "str_sql " . $str_sql;
//exit();

$querySelect = $link->query($str_sql);

if ($querySelect->num_rows == 0) {
    echo "<script>alert('Problema no cadastro de produtos, não encontrou algum registro relacionado')</script>";

    echo "<script>location.href='lista_produtos.php'</script>";
    exit();
};

while ($registros = $querySelect->fetch_assoc()):
    $id = $registros['id'];
    $descricao = $registros['descricao'];
    $prevenda1 = $registros['prevenda1'];
    $prevenda2 = $registros['prevenda2'];
    $codbar = $registros['codbar'];
    $codgrupo = $registros['codgrupo'];
    $descresu = $registros['descresu'];
    $estinicial = $registros['estinicial'];
    $estatual = $registros['estatual'];
    $minimo = $registros['minimo'];
    $unidade = $registros['unidade'];
    $codfor = $registros['codfor'];
    $indlucro = $registros['indlucro'];
    $dtultvenda = $registros['dtultvenda'];
    $dtcadastro = $registros['dtcadastro'];
    $Ativo = $registros['Ativo'];
    $Precocusto = $registros['Precocusto'];

//    $PRD_CFO    = $registros['descricao']; 
//    $PRD_IPI    = $registros['descricao']; 
//    $PRD_SIT    = $registros['prevenda1'];
//    $PRD_CLF    = $registros['prevenda2'];
//    $PRD_QTU    = $registros['descricao'];
//    $PRD_DCA    = $registros['descricao'];
//    $PRD_VLA    = $registros['descricao'];
//    $PRD_DCM    = $registros['descricao'];
//    $PRD_ICM    = $registros['descricao'];
//    $PRD_DCP    = $registros['descricao'];  

endwhile;

?>

<div class="row container">
    <form action="../banco_de_dados/updateProd.php" id="formEditarprod" method="post" class="col s12">
        <fieldset class="formulario" style="padding: 15px">
            <!-- <legend><img src="imagens/avatar-1.png" width="50"></legend>  -->
            <h5 class="light center">Alteração de produto</h5>

            <?php
            if (isset($_SESSION['msg'])):
                echo $_SESSION['msg'];
                session_unset();
            endif;
            ?>
            <!-- Campo descricao -->
            <div class="row">
                <div class="input-field col s8">
                    <input type="text" name="descricao" id="descricao" value="<?php echo $descricao ?>" maxlength="30"
                        required="" autofocus>
                    <label for="descricao">descricao</label>
                </div>
                <div class="input-field col s4">
                    <input type="text" name="codbar" id="codbar" value="<?php echo $codbar ?>" maxlength="13"
                        required="">
                    <label for="codbar">Cod. Barra</label>
                </div>
            </div>
            <!-- seleçcao do grupo para ver o codigo pela descricao  -->


            <div class="row">
                <div class="input-field col s4">

                    <select name="codgrupo[]" id="codgrupo">
                        <!-- <option disabled>Clique para escolher </option>  -->
                        <?php
                        $querySelect = $link->query("select id, descricao as grupo from tb_grupos ");
                        while ($registros = $querySelect->fetch_assoc()) :
                            $id = $registros['id'];
                            $grupo = $registros['grupo'];
                            if ($id == $codgrupo) {
                                echo '<option selected="seleted" value=' . $id . '>' . $grupo . '</option>';
                            } else {
                                echo '<option value=' . $id . '>' . $grupo . '</option>';
                            }
                        endwhile;
                        echo '</select>';
                        echo '<label for="codgrupo">Grupo do produto</label>';

                        ?>
                </div>

            <!-- Campo prevenda1 -->
            <div class="input-field col s2">
                <input type="text" name="prevenda1" id="prevenda1"
                    value="<?php echo number_format($prevenda1, 2, ',', '.'); ?>"
                    onblur="javascript:this.value=formataValor(this.value);">
                <label for="prevenda1">Preço 1</label>

            </div>
            <!-- Campo prevenda2 -->
            <div class="input-field col s2">
                <input type="text" name="prevenda2" id="prevenda2"
                    value="<?php echo number_format($prevenda2, 2, ',', '.'); ?>"
                    onblur="javascript:this.value=formataValor(this.value);">
                <label for="prevenda2">Preço 2</label>
            </div>
            <!-- Campo indice de lucro -->
            <div class="input-field col s2">
                <input type="text" name="indlucro" id="indlucro"
                    value="<?php echo number_format($indlucro, 2, ',', '.'); ?>"
                    onblur="javascript:this.value=formataValor(this.value);">
                <label for="indlucro">% Lucro</label>
            </div>
</div>

<!-- Estoque  -->
<div class="row">
    <!-- Estoque  Inicial -->
    <div class="input-field col s4">
        <input type="text" name="estinicial" id="estinicial"
            value="<?php echo number_format($estinicial, 2, ',', '.'); ?>"
            onblur="javascript:this.value=formataValor(this.value);">
        <label for="estinicial">Estoque inicial</label>
    </div>

    <!-- Estoque  Atual -->
    <div class="input-field col s4">
        <input type="text" name="estatual" id="estatual"
            value="<?php echo number_format($estatual, 2, ',', '.'); ?>"
            onblur="javascript:this.value=formataValor(this.value);">
        <label for="estatual">Estoque atual</label>
    </div>

    <!-- Campo Estoque Minimo -->
    <div class="input-field col s4">
        <input type="text" name="minimo" id="minimo"
            value="<?php echo number_format($minimo, 2, ',', '.'); ?>"
            onblur="javascript:this.value=formataValor(this.value);">
        <label for="minimo">Estoque minimo</label>
    </div>
</div>

<!-- Outros campos -->
<div class="row">
    <!-- Unidade -->
    <div class="input-field col s4">
        <input type="text" name="unidade" id="unidade" value="<?php echo $unidade ?>" maxlength="2">
        <label for="unidade">Unidade</label>
    </div>

    <!-- Fornecedor -->
    <div class="input-field col s4">
        <input type="text" name="codfor" id="codfor" value="<?php echo $codfor ?>" maxlength="4">
        <label for="codfor">Fornecedor</label>
    </div>

    <!-- Campo Estoque Minimo -->
    <div class="input-field col s4">
        <input type="text" name="minimo" id="minimo"
            value="<?php echo number_format($minimo, 2, ',', '.'); ?>"
            onblur="javascript:this.value=formataValor(this.value);">
        <label for="minimo">Estoque minimo</label>
    </div>
</div>

<!-- Outros campos -->
<div class="row">
    <!-- Ultima venda -->
    <div class="input-field col s4">
        <input type="text" name="dtultvenda" id="dtultvenda" value="<?php echo $dtultvenda ?>" maxlength="2">
        <label for="dtultvenda">Ultima venda</label>
    </div>

    <!-- dtcadastro -->
    <div class="input-field col s4">
        <input type="text" name="dtcadastro" id="dtcadastro" value="<?php echo $dtcadastro ?>" maxlength="4">
        <label for="dtcadastro">Data cadastro</label>
    </div>

    <!-- Campo Estoque Minimo -->
    <div class="input-field col s4">
        <input type="text" name="Ativo" id="Ativo" value="<?php echo $Ativo ?>" maxlength="1">
        <label for="Ativo">Ativo ?</label>
    </div>
</div>

<!--
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
        -->

<!-- Botões -->
<div class="input-field col s12">
    <input type="submit" value="Alterar" class="btn blue">
    <a href="lista_produtos.php" class="btn red">Voltar</a>
</div>

</fieldset>
</form>
</div>

<?php include_once('../includes/footer.inc.php') ?>