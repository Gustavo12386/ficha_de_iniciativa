<?php
 require 'post/config.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">  
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.all.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>  
    <script src="./js/enviar.js"></script>   
    <title>Ficha de Iniciativa</title>
</head>
<body>
<div id="container">  
  <h1>Ficha de Iniciativa</h1>  
  <div id="container2">    
  <form class="form" id="form" action="post/Acao.php" method="POST">  
    <div id="sub-container">   
      <p class="texto">Eixo Estratégico</p>    
      <select name="eixo_relacionado" required>
      <option value="">todos</option>   
      <?php 
        $exibicao1 = $conn->prepare('SELECT DISTINCT nome_eixo_estrategico from eixo');
        $exibicao1->execute();
    
        if($exibicao1->rowCount() > 0){
          while($dado = $exibicao1->fetch(PDO::FETCH_ASSOC)){          
            echo "<option value='{$dado['nome_eixo_estrategico']}'>{$dado['nome_eixo_estrategico']}</option>";          
          }
        }  
      ?>
      </select>
      <span id="selectEixoError" class="error"></span>
    </div> 
    <div id="sub-container">
      <p class="texto">Programa</p> 
      <select name="problema_relacionado" required>
        <option value="">todos</option>   
        <?php 
          $exibicao2 = $conn->prepare('SELECT DISTINCT desc_programa_governo from programa');
          $exibicao2->execute();
      
          if($exibicao2->rowCount() > 0){
            while($dado = $exibicao2->fetch(PDO::FETCH_ASSOC)){              
              echo "<option value='{$dado['desc_programa_governo']}'>{$dado['desc_programa_governo']}</option>";         
            }
          }  
        ?>
      </select>
      <span id="selectProgramaError" class="error"></span>
    </div>
    <div id="sub-container">
      <p class="texto">Compromisso</p> 
      <select name="compromisso_relacionado" required>
      <option value="">todos</option> 
      <?php 
        $exibicao3 = $conn->prepare('SELECT DISTINCT desc_compromisso from compromisso');
        $exibicao3->execute();
    
        if($exibicao3->rowCount() > 0){
          while($dado = $exibicao3->fetch(PDO::FETCH_ASSOC)){         
            echo "<option value='{$dado['desc_compromisso']}'>{$dado['desc_compromisso']}</option>";         
          }
        }  
      ?>
      </select>
      <span id="selectCompromissoError" class="error"></span>
    </div>  
     <div id="sub-container2">
     <p class="texto">Problema</p>  
     </div>
     <textarea class="descricao" name="problema" required></textarea>
     <div id="sub-container2">
     <p class="texto">Causas Críticas</p>   
     </div>
     <textarea class="descricao" name="causas_criticas" required></textarea>
     <div id="sub-container2">
     <p class="texto">Ações Críticas</p>    
     </div>
     <textarea class="descricao" name="acoes_criticas" required></textarea>
     <br>
     <input type="submit" value="Enviar" name="Enviar" class="botao">
  </form>
  </div> 
 </div>
</body>
</html>