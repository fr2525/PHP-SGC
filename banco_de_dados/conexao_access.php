<?php
$dbName = "C:/aplics/php/php_sgc/banco_de_dados/dbsgl.mdb";
$dsn = "Driver={Microsoft Access Driver (*.mdb, *.accdb)};Dbq=$dbName;";

$conexao = odbc_connect($dsn, "", "");

if (!$conexao) {
    die("Erro na conexão com o banco Access: " . odbc_errormsg());
}

$resultado = odbc_exec($conexao, "SELECT * FROM tab_clientes");

while ($linha = odbc_fetch_array($resultado)) {
    print_r($linha);
}

odbc_close($conexao);
?>
