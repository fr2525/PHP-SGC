<?php
session_start();
include_once 'conexao.php';

$id = $_SESSION['id'];

$cpf_cnpj  = filter_input(INPUT_POST, 'cpf_cnpj', FILTER_SANITIZE_SPECIAL_CHARS);
$nome    = filter_input(INPUT_POST, 'nome', FILTER_SANITIZE_SPECIAL_CHARS);
$endereco = filter_input(INPUT_POST,'endereco', FILTER_SANITIZE_SPECIAL_CHARS);
$numero = filter_input(INPUT_POST,'numero', FILTER_SANITIZE_SPECIAL_CHARS);
$complemento = filter_input(INPUT_POST,'complemento', FILTER_SANITIZE_SPECIAL_CHARS);
$bairro = filter_input(INPUT_POST,'bairro', FILTER_SANITIZE_SPECIAL_CHARS);
$cidade = filter_input(INPUT_POST,'cidade', FILTER_SANITIZE_SPECIAL_CHARS);
$estado = filter_input(INPUT_POST,'estado', FILTER_SANITIZE_SPECIAL_CHARS);
$cep = filter_input(INPUT_POST,'cep', FILTER_SANITIZE_SPECIAL_CHARS);
$email   = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_SPECIAL_CHARS);
$celular  = filter_input(INPUT_POST, 'celular', FILTER_SANITIZE_SPECIAL_CHARS);
$str_sql = "update tb_clientes SET cpf_cnpj = '$cpf_cnpj'
                                   ,nome = '$nome'
                                   ,endereco = '$endereco'
                                   ,numero =  '$numero'
                                   ,complemento = '$complemento'
                                   ,bairro = '$bairro'
                                   ,cidade = '$cidade'
                                   ,estado = '$estado'
                                   ,cep = '$cep'
                                   ,celular = '$celular'
                                   ,email = '$email'
                                   WHERE id = '$id'";
                                   
                                   
$queryUpdate = $link->query($str_sql);
                                   
$affected_rows = mysqli_affected_rows($link);

if (!$queryUpdate) {
    echo "Erro no update: " . $link->error;
}

if ($affected_rows > 0) {

    $_SESSION['msg'] = "<h5><p class='center green-text'>" . "Alteração efetuada com sucesso" . "</p></h5>";
    header("Location: ../public/editarCli.php?id=$id");
    //session_unset();

    //header("refresh:1;url=../public/lista_clientes.php"); // Redireciona após 1 segundos
    //echo '<script>alert("Cliente atualizado com sucesso!");</script>';
    //exit;
} else {

    $_SESSION['msg'] = "<h5><p class='center green-text'>" . "Nada a alterar" . "</p></h5>";
    header("Location: ../public/editarCli.php?id=$id");
    //session_unset();

//    header("refresh:1;url=../public/lista_clientes.php"); // Redireciona após 1 segundos
//    echo '<script>alert("Nada a atualizar!");</script>';
//    exit;
    
}

?>
