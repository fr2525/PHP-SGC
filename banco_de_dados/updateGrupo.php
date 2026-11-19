<?php
session_start();
include_once 'conexao.php';
 
/*
    $descricao
    $indlucro1
    $indlucro2
  
*/

$id = $_SESSION['id'];

$descricao  = filter_input(INPUT_POST, 'descricao', FILTER_SANITIZE_SPECIAL_CHARS);
$indlucro1    = filter_input(INPUT_POST, 'indlucro1', FILTER_SANITIZE_SPECIAL_CHARS);
$indlucro2   = filter_input(INPUT_POST, 'indlucro2', FILTER_SANITIZE_SPECIAL_CHARS);

$str_sql = "update tb_grupos SET descricao = '$descricao' ,indlucro1 ='$indlucro1',indlucro2 = '$indlucro2' WHERE id = '$id'";


$queryUpdate = $link->query($str_sql);

if (!$queryUpdate) {
    echo "Erro no update: " . $link->error;
}

$affected_rows = mysqli_affected_rows($link);

if ($affected_rows > 0) {
    $_SESSION['msg'] = "<h5><p class='center green-text'>" . "Alteração efetuada com sucesso" . "</p></h5>";
    header("Location: ../public/editarGrupo.php?id=$id");
} else {
    $_SESSION['msg'] = "<h5><p class='center green-text'>" . "Nada a alterar" . "</p></h5>";
    header("Location: ../public/editarGrupo.php?id=$id");
    
}

?>

