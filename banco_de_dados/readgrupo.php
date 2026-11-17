<?php
include_once 'conexao.php';

//A quantidade de valor a ser exibida
$quantidade = 7;
//a pagina atual
$pagina     = (isset($_GET['pagina'])) ? (int)$_GET['pagina'] : 1;
//Calcula a pagina de qual valor será exibido
$inicio     = ($quantidade * $pagina) - $quantidade;

//SQL para saber o total
$sqlTotal   = "SELECT id FROM tb_grupos";

//Monta o SQL com LIMIT para exibição dos dados  
$strsql = "select id, descricao, indlucro1, indlucro2 from tb_grupos order by descricao LIMIT $inicio, $quantidade";
$querySelect = $link->query($strsql);

while ($registros = $querySelect->fetch_assoc()):

    $id = $registros['id'];
    $descricao = $registros['descricao'];
    $indlucro1 = $registros['indlucro1'];
    $indlucro2 = $registros['indlucro2'];
    
    echo "<tr>";
    echo "<td>$descricao</td>";
    echo "<td>$indlucro1</td>";
    echo "<td>$indlucro2</td>";

    echo "<td><a href='editarGrupo.php?id=$id'><i class='material-icons'>edit</i></td>";
    //echo "<td><a href='banco_de_dados/deleteCli.php?id=$id'><i class='material-icons'>delete</i></td>";

    echo "<td><a href='../banco_de_dados/deletegrupo.php?id=";
    echo $id."&tabela=tb_grupos&retorno=lista_grupos.php' " ;
    echo ' OnClick="javascript:return confirm(\'Deseja mesmo excluir o grupo \n marca: '.$descricao . ' ?\');">';
    echo "<i class='material-icons'>delete</i>";
   
    // echo " Excluir </a>";

	echo  "</td></tr>";


    echo "</tr>";
endwhile;

include_once 'paginacao.php';

 ?>   