<?php

require 'config.php';
require 'Insert.php';

$envio = new Insert();

$eixo = $_POST['eixo_relacionado'];
$programa = $_POST['programa_relacionado'];
$compromisso = $_POST['compromisso_relacionado'];
$problema = $_POST['problema'];
$causas = $_POST['causas_criticas'];
$acoes = $_POST['acoes_criticas'];

if($envio->enviar($eixo, $programa, $compromisso, $problema, $causas, $acoes) == false){
   header("Location: erro.php?mensagem=erro");
}
?>