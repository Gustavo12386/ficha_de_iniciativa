<?php

require 'config.php';
require 'Insert.php';

$envio = new Insert();

var_dump($_POST);

$eixo = $_POST['eixo_relacionado'];
$problema_relacionado = $_POST['problema_relacionado'];
$compromisso = $_POST['compromisso_relacionado'];
$problema = $_POST['problema'];
$causas = $_POST['causas_criticas'];
$acoes = $_POST['acoes_criticas'];

if($envio->enviar($eixo, $problema_relacionado, $compromisso, $problema, $causas, $acoes) == false){
   header("Location: erro.php?mensagem=erro");
}
?>