<?php
session_start();
include_once 'conexao.php';
include_once '../valida.php';

$cpf_cnpj  = filter_input(INPUT_POST, 'cpf_cnpj', FILTER_SANITIZE_NUMBER_INT);
$nome    = filter_input(INPUT_POST, 'nome', FILTER_SANITIZE_SPECIAL_CHARS);
$endereco    = filter_input(INPUT_POST, 'endereco', FILTER_SANITIZE_SPECIAL_CHARS);
$numero    = filter_input(INPUT_POST, 'numero', FILTER_SANITIZE_SPECIAL_CHARS);
$complemento    = filter_input(INPUT_POST, 'complemento', FILTER_SANITIZE_SPECIAL_CHARS);
$bairro    = filter_input(INPUT_POST, 'bairro', FILTER_SANITIZE_SPECIAL_CHARS);
$cidade    = filter_input(INPUT_POST, 'cidade', FILTER_SANITIZE_SPECIAL_CHARS);
$estado    = filter_input(INPUT_POST, 'estado', FILTER_SANITIZE_SPECIAL_CHARS);
$cep    = filter_input(INPUT_POST, 'cep', FILTER_SANITIZE_SPECIAL_CHARS);
$email   = filter_input(INPUT_POST, 'email', FILTER_VALIDATE_EMAIL);
$celular  = filter_input(INPUT_POST, 'celular', FILTER_SANITIZE_SPECIAL_CHARS);


$_SESSION['cpf_cnpj'] = $cpf_cnpj;

$_SESSION['nome'] = $nome;
$_SESSION['endereco'] = $endereco;   
$_SESSION['numero'] = $numero; 
$_SESSION['complemento'] = $complemento;
$_SESSION['bairro'] = $bairro;   
$_SESSION['cidade'] = $cidade;  
$_SESSION['estado'] = $estado;  
$_SESSION['cep'] = $cep;
$_SESSION['email'] = $email;            
$_SESSION['celular'] = $celular;

/*
if(validaCPF($cpf_cnpj) == false) :
    $_SESSION['msg'] = "<h5><p class='center red-text'>" . "CPF inválido" . "</p></h5>";
    header("Location: ../novocli.php");
    exit;
endif;
*/

if (filter_var($email, FILTER_VALIDATE_EMAIL) == false) {
    $_SESSION['msg'] = "<h5><p class='center red-text'>" . "e-mail é inválido." . "</p></h5>";
    header("Location: ../public/novocli.php");
    exit;
}

if(validaCelular($celular) == false) :
    $_SESSION['msg'] = "<h5><p class='center red-text'>" . "Número de celular inválido" . "</p></h5>";
    header("Location: ../public/novocli.php");
    exit;
endif;

$querySelect = $link->query("SELECT cpf_cnpj from tb_clientes where cpf_cnpj = '$cpf_cnpj'");

$affected_rows = mysqli_affected_rows($link);

if ($affected_rows > 0 ):
    $_SESSION['msg'] = "<h5><p class='center red-text'>" . "Cliente já cadastrado com esse CPF" . "</p></h5>";
    header("Location: ../public/novocli.php");
else :
    //$affected_rows = 0;
    $str_sql = "insert into tb_clientes (cpf_cnpj,nome,endereco,numero,complemento,bairro,cidade,estado,cep,email,celular) 
                                 values ( $cpf_cnpj,'$nome','$endereco','$numero','$complemento'
                                 ,'$bairro','$cidade','$estado','$cep', '$email','$celular')";
    
    $queryInsert = $link->query($str_sql);
    $affected_rows = mysqli_affected_rows($link);
    if ($affected_rows > 0) :
        session_unset();
        $_SESSION['msg'] = "<h5><p class='center green-text'>" . "Cadastro efetuado com sucesso" . "</p></h5>";
        header("Location: ../public/novocli.php");
    endif;
endif;
