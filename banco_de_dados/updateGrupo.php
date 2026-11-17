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

$sql = "update tb_grupos SET descricao = '$descricao' ,indlucro1 ='$indlucro1',indlucro2 = '$indlucro2' WHERE id = '$id'";


$queryUpdate = $link->query($sql);
$affected_rows = mysqli_affected_rows($link);

if ($affected_rows > 0 ):
    header("Location: ../public/lista_grupos.php");
endif;    

?>

