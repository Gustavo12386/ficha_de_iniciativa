<?php require 'post/config.php';  ?>
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
         $sql = $conn->prepare('SELECT * FROM medidas');
         $sql->execute();
         if($sql->rowCount() > 0){
           while($rows = $sql->fetch(PDO::FETCH_ASSOC)){         
        ?>
          <tr>
            <th scope="col" class="id"><?= $rows['id'] ?></th>
            <td><?= $rows['eixo_relacionado'] ?></td>
            <td><?= $rows['programa_relacionado'] ?></td>
            <td><?= $rows['compromisso_relacionado'] ?></td>
            <td><?= $rows['problema'] ?></td>
            <td><?= $rows['causas_criticas'] ?></td>
            <td><?= $rows['acoes_criticas'] ?></td>            
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