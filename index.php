<?php require 'post/config.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.css">  
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script> 
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">  
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>    
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.all.min.js"></script>         
    <script src="./js/enviar.js"></script>
    <script src="./js/primeiro_filtro.js"></script>
    <script src="./js/segundo_filtro.js"></script>
    <title>Ficha de Iniciativa</title>
</head>
<body>
<div id="container">  
  <h1>Ficha de Iniciativa</h1>  
  <div id="container2">    
  <form class="form" id="form" action="./post/Acao.php" method="POST">  
    <div id="sub-container">   
      <p class="texto">Eixo Estratégico</p>    
      <select name="eixo_relacionado" id="eixo_relacionado" class="select2" required>
      <option value="">Selecione um Eixo:</option>   
      <?php 
        $exibicao1 = $conn->prepare('SELECT cod_eixo_estrategico, nome_eixo_estrategico from eixo');
        $exibicao1->execute();
    
        if($exibicao1->rowCount() > 0){
          while($dado = $exibicao1->fetch(PDO::FETCH_ASSOC)){          
            echo "<option value='{$dado['cod_eixo_estrategico']} - {$dado['nome_eixo_estrategico']}'>
            {$dado['cod_eixo_estrategico']} - {$dado['nome_eixo_estrategico']}</option>";          
          }
        }  
      ?>
      </select>
      
    </div> 
    <div id="sub-container">
      <p class="texto">Programa</p> 
      <select name="programa_relacionado" id="programa_relacionado" class="select2" required>
        <option value="">Selecione um Programa:</option>   
        <?php 
          $exibicao2 = $conn->prepare('SELECT cod_programa_governo, desc_programa_governo from programa');
          $exibicao2->execute();
      
          if($exibicao2->rowCount() > 0){
            while($dado = $exibicao2->fetch(PDO::FETCH_ASSOC)){              
              echo "<option value='{$dado['cod_programa_governo']} - {$dado['desc_programa_governo']}'>
              {$dado['cod_programa_governo']} - {$dado['desc_programa_governo']}</option>";         
            }
          }  
        ?>
      </select>
    
    </div>
    <div id="sub-container">
      <p class="texto">Compromisso</p> 
      <select name="compromisso_relacionado" id="compromisso_relacionado" class="select2" required>
        <option value="">Selecione um Compromisso:</option>    
        <?php 
          $exibicao3 = $conn->prepare('SELECT cod_compromisso, desc_compromisso from compromisso');
          $exibicao3->execute();
      
          if($exibicao3->rowCount() > 0){
            while($dado = $exibicao3->fetch(PDO::FETCH_ASSOC)){              
              echo "<option value='{$dado['cod_compromisso']} - {$dado['desc_compromisso']}'>
              {$dado['cod_compromisso']} - {$dado['desc_compromisso']}</option>";         
            }
          }  
        ?>
      </select>
    
    </div>  
     <div id="sub-container2">
     <p class="texto">Problema</p>  
     </div>
     <?php
      $cod_problema = $conn->prepare('SELECT id FROM medidas ORDER BY id desc LIMIT 1');
      $cod_problema->execute();
      if($cod_problema->rowCount() == null)
      {       
        echo "<input type='hidden' name='cod_problema' value='1' >";
      } 
      else if($cod_problema->rowCount() > 0)
      {
        while($dado = $cod_problema->fetch(PDO::FETCH_ASSOC))
        {
           $dado['id'];
           if($dado > 0)
           {
             $newId = $dado['id'] + 1;             
             echo "<input type='hidden' name='cod_problema' value='$newId'> ";            
           }
        }
      }
    ?> 
     <textarea class="descricao" name="problema" required></textarea>
     <div id="sub-container2">
      <p class="texto">Causas Críticas</p>       
     </div>
      <?php
        $cod_causas = $conn->prepare('SELECT id FROM medidas ORDER BY id desc LIMIT 1');
        $cod_causas->execute();
        if($cod_causas->rowCount() == null)
        {       
          echo "<input type='hidden' name='cod_causas' value='1' >";
        } 
        else if($cod_causas->rowCount() > 0)
        {
          while($dado = $cod_causas->fetch(PDO::FETCH_ASSOC))
          {
            $dado['id'];
            if($dado > 0)
            {
              $newId = $dado['id'] + 1;             
              echo "<input type='hidden' name='cod_causas' value='$newId'> ";            
            }
          }
        }
      ?> 
     <textarea class="descricao" name="causas_criticas" required></textarea>
     <div id="sub-container2">
     <p class="texto">Ações Críticas</p>    
     </div>
      <?php
        $cod_acoes = $conn->prepare('SELECT id FROM medidas ORDER BY id desc LIMIT 1');
        $cod_acoes->execute();
        if($cod_acoes->rowCount() == null)
        {       
          echo "<input type='hidden' name='cod_acoes' value='1' >";
        } 
        else if($cod_acoes->rowCount() > 0)
        {
          while($dado = $cod_acoes->fetch(PDO::FETCH_ASSOC))
          {
            $dado['id'];
            if($dado > 0)
            {
              $newId = $dado['id'] + 1;             
              echo "<input type='hidden' name='cod_acoes' value='$newId'> ";            
            }
          }
        }
      ?> 
     <textarea class="descricao" name="acoes_criticas" required></textarea>
     <br>
     <input type="submit" value="Enviar" name="Enviar" class="botao">
  </form>
  <div class="inscricao"></div> 
  </div> 
 </div>
</body>
</html>