<?php
require 'post/config.php';
require 'post/Acoes.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/lista.css">     
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>Lista</title>
</head>
<body>
    <div id="container">
      <h1>Informações Registradas</h1>  
    </div>  
    <div id="sub-container">           
    <input type="search" class="form-control w-25" placeholder="pesquisar por eixo" id="pesquisar">
        <button onclick="searchData()" class="botao4">pesquisar</button>
    </div>
    <div id="tabela">    
        <table class="table table-bordered border-dark" border ='1'>
         <thead>
            <tr>
            <th scope="col">ID</th>
            <th scope="col">Eixo</th>
            <th scope="col">Programa</th>
            <th scope="col">Compromisso</th>
            <th scope="col">Problema</th>
            <th scope="col">Causas_criticas</th>
            <th scope="col">Ações_criticas</th>
            </tr>
         </thead>
        <tbody>
        <?php
         $pesquisar = new Acoes();
         $rows = $pesquisar->pesquisar();         
        
         if(count($rows) > 0){
          foreach ($rows as $row) {   
        ?>
          <tr>
            <th scope="col" class="id"><?= $row['id']?></th>
            <td><?= $row['eixo_relacionado'] ?></td>
            <td><?= $row['programa_relacionado'] ?></td>
            <td><?= $row['compromisso_relacionado'] ?></td>
            <td><?= $row['problema'] ?></td>
            <td><?= $row['causas_criticas'] ?></td>
            <td><?= $row['acoes_criticas'] ?></td>            
          </tr>    
        <?php
          }
        }         
        ?>
       </tbody>
       </table>
       <input type="button" value="Voltar" class="botao3" onClick="window.location.href='index.php'">
    </div>
</body>
</html>