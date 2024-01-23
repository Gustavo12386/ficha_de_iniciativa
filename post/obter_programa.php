<?php
include('config.php');

$eixo = $_GET['eixo'];

$exibicao = $conn->prepare('SELECT cod_programa_governo, desc_programa_governo FROM programa
WHERE cod_nome_eixo=:cod_nome_eixo');

$data = ['cod_nome_eixo' => $eixo];
$exibicao->execute($data);
     
 if($exibicao->rowCount() > 0){
  echo '<option value="">Selecione um Programa:</option>';  
   while($dado = $exibicao->fetch(PDO::FETCH_ASSOC)){                 
     echo "<option value='{$dado['cod_programa_governo']} - {$dado['desc_programa_governo']}'>
     {$dado['cod_programa_governo']} - {$dado['desc_programa_governo']}</option>";         
    }
  }  
?>