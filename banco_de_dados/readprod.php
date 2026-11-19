<?php
include_once 'conexao.php';

//A quantidade de valor a ser exibida
$quantidade = 6;
//a pagina atual
$pagina     = (isset($_GET['pagina'])) ? (int)$_GET['pagina'] : 1;
//Calcula a pagina de qual valor será exibido
$inicio     = ($quantidade * $pagina) - $quantidade;

//SQL para saber o total
$sqlTotal   = "SELECT codprod FROM tb_produtos";

//Monta o SQL com LIMIT para exibição dos dados  
$strsql = "select codprod, descricao, unidade, estatual, prevenda1, prevenda2 from tb_produtos order by descricao LIMIT $inicio, $quantidade";

$querySelect = $link->query($strsql);

while ($registros = $querySelect->fetch_assoc()):

    $id = $registros['codprod'];
    $descricao = $registros['descricao'];
    $unidade  =  $registros['unidade'];
    $estoque  =  $registros['estatual'];
    $prevenda1 = $registros['prevenda1'];
    $prevenda2 = $registros['prevenda2'];
    
    echo "<tr>";
    echo "<td>$descricao</td>";
    echo "<td>$unidade</td>";
    echo "<td>$estoque</td>";
    echo "<td>$prevenda1</td>";
    echo "<td>$prevenda2</td>";

    echo "<td><a href='editarProd.php?codprod=$id'><i class='material-icons'>edit</i></td>";
    //echo "<td><a href='banco_de_dados/deleteCli.php?id=$id'><i class='material-icons'>delete</i></td>";

    echo "<td><a href='../banco_de_dados/deleteProd.php?codprod=";
    echo $id."&tabela=tb_grupos&retorno=lista_Produtos.php' " ;
    echo ' OnClick="javascript:return confirm(\'Deseja mesmo excluir o produto \n marca: '.$descricao . ' ?\');">';
    echo "<i class='material-icons'>delete</i>";
   
    // echo " Excluir </a>";

	echo  "</td></tr>";


    echo "</tr>";
endwhile;

include_once 'paginacao.php';

 ?>   