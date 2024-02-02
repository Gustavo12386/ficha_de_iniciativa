<?php

require 'config.php';
require 'Acoes.php';

$envio = new Acoes();

$eixo = $_POST['eixo_relacionado'];
$programa = $_POST['programa_relacionado'];
$compromisso = $_POST['compromisso_relacionado'];
$cod_problema = $_POST['cod_problema'];
$problema = $_POST['problema'];
$cod_causas = $_POST['cod_causas'];
$causas = $_POST['causas_criticas'];
$cod_acoes = $_POST['cod_acoes'];
$acoes = $_POST['acoes_criticas'];

if($envio->enviar($eixo, $programa, $compromisso, $cod_problema, $problema,
   $cod_causas, $causas, $cod_acoes, $acoes) == false)
   {
      session_start();
      $_SESSION['error'] = $error;
      header("Location: erro.php?mensagem=erro");
   }
?>