<?php
session_start();
include_once 'conexao.php';


$id = $_SESSION['id'];

$cpf_cnpj  = filter_input(INPUT_POST, 'cpf_cnpj', FILTER_SANITIZE_SPECIAL_CHARS);
$nome    = filter_input(INPUT_POST, 'nome', FILTER_SANITIZE_SPECIAL_CHARS);
$endereco    = filter_input(INPUT_POST, 'endereco', FILTER_SANITIZE_SPECIAL_CHARS);
$telefone = filter_input(INPUT_POST, 'telefone', FILTER_SANITIZE_SPECIAL_CHARS);
$bairro = filter_input(INPUT_POST, 'bairro', FILTER_SANITIZE_SPECIAL_CHARS);
$cidade = filter_input(INPUT_POST, 'cidade', FILTER_SANITIZE_SPECIAL_CHARS);
$estado = filter_input(INPUT_POST, 'estado', FILTER_SANITIZE_SPECIAL_CHARS);
$cep = filter_input(INPUT_POST, 'cep', FILTER_SANITIZE_SPECIAL_CHARS);
$email   = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_SPECIAL_CHARS);
$telefone  = filter_input(INPUT_POST, 'telefone', FILTER_SANITIZE_SPECIAL_CHARS);
$celular  = filter_input(INPUT_POST, 'celular', FILTER_SANITIZE_SPECIAL_CHARS);

$str_sql = "update tb_fornecedores SET cpf_cnpj = '$cpf_cnpj'
                                                    ,nome ='$nome'
                                                    ,endereco = '$endereco'
                                                    ,bairro = '$bairro'
                                                    ,cidade = '$cidade'
                                                    ,estado = '$estado'
                                                    ,cep = '$cep'
                                                    ,email = '$email'
                                                    ,telefone = '$telefone'
                                                    ,celular = '$celular'
                                                    WHERE id = '$id'";

$queryUpdate = $link->query($str_sql);

if (!$queryUpdate) {
    echo "Erro no update: " . $link->error;
}

$affected_rows = mysqli_affected_rows($link);

if ($affected_rows > 0) {
    $_SESSION['msg'] = "<h5><p class='center green-text'>" . "Alteração efetuada com sucesso" . "</p></h5>";
    header("Location: ../public/editarFor.php?id=$id");
} else {
    $_SESSION['msg'] = "<h5><p class='center green-text'>" . "Nada a alterar" . "</p></h5>";
    header("Location: ../public/editarFor.php?id=$id");
    
}
?>

