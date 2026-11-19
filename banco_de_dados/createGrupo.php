<?php
session_start();
include_once 'conexao.php';
include_once '../valida.php';

$descricao  = filter_input(INPUT_POST, 'descricao',  FILTER_SANITIZE_SPECIAL_CHARS);
$indlucro1    = filter_input(INPUT_POST, 'indlucro1', FILTER_SANITIZE_SPECIAL_CHARS);
$indlucro2    = filter_input(INPUT_POST, 'indlucro2', FILTER_SANITIZE_SPECIAL_CHARS);

$_SESSION['descricao'] = $descricao;
$_SESSION['indlucro1'] = $indlucro1;
$_SESSION['indlucro2'] = $indlucro1;


/*
if(validaCPF($cpf) == false) :
    $_SESSION['msg'] = "<h5><p class='center red-text'>" . "CPF inválido" . "</p></h5>";
    header("Location: ../novocli.php");
    exit;
endif;

if (filter_var($email, FILTER_VALIDATE_EMAIL) == false) {
    $_SESSION['msg'] = "<h5><p class='center red-text'>" . "e-mail é inválido." . "</p></h5>";
    header("Location: ../novofor.php");
    exit;
}

if(validaCelular($celular) == false) :
    $_SESSION['msg'] = "<h5><p class='center red-text'>" . "Número de telefone inválido" . "</p></h5>";
    header("Location: ../novocli.php");
    exit;
endif;
*/

$str_sql = "insert into tb_grupos (descricao,indlucro1,indlucro2) 
                                 values ( '$descricao','$indlucro1','$indlucro2')";
    
    $queryInsert = $link->query($str_sql);
    $affected_rows = mysqli_affected_rows($link);
    if ($affected_rows > 0) :
        session_unset();
        $_SESSION['msg'] = "<h5><p class='center green-text'>" . "Cadastro efetuado com sucesso" . "</p></h5>";
        header("Location:../public/novoGrupo.php");
        
    endif;

